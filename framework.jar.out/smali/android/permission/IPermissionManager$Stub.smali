.class public abstract Landroid/permission/IPermissionManager$Stub;
.super Landroid/os/Binder;
.source "IPermissionManager.java"

# interfaces
.implements Landroid/permission/IPermissionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/IPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/IPermissionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.permission.IPermissionManager"

.field static final TRANSACTION_checkUidPermissionOperation:I = 0x4

.field static final TRANSACTION_getPermInfoFromPermName:I = 0x1

.field static final TRANSACTION_getPermInfoFromPkgName:I = 0x2

.field static final TRANSACTION_getPermInfoFromUid:I = 0x3

.field static final TRANSACTION_getSinglePermStatus:I = 0xa

.field static final TRANSACTION_getUidtatus:I = 0xb

.field static final TRANSACTION_insertUidPermission:I = 0x6

.field static final TRANSACTION_installAndDeleteApk:I = 0x9

.field static final TRANSACTION_setClickFlag:I = 0xe

.field static final TRANSACTION_setOnShowPermDlgListener:I = 0x11

.field static final TRANSACTION_setOprationType:I = 0xf

.field static final TRANSACTION_setSinglePermStatus:I = 0xc

.field static final TRANSACTION_setUidtatus:I = 0xd

.field static final TRANSACTION_updateBatPkgPermission:I = 0x8

.field static final TRANSACTION_updateBatUidPermission:I = 0x7

.field static final TRANSACTION_updateUidPermission:I = 0x5

.field static final TRANSACTION_updateUidPermissionShowflag:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.permission.IPermissionManager"

    invoke-virtual {p0, p0, v0}, Landroid/permission/IPermissionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.permission.IPermissionManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/permission/IPermissionManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/permission/IPermissionManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/permission/IPermissionManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/permission/IPermissionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 42
    :sswitch_0
    const-string v7, "android.permission.IPermissionManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "android.permission.IPermissionManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/permission/IPermissionManager$Stub;->getPermInfoFromPermName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 51
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/permission/PermItemInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/permission/PermItemInfo;>;"
    :sswitch_2
    const-string v7, "android.permission.IPermissionManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/permission/IPermissionManager$Stub;->getPermInfoFromPkgName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 61
    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/permission/PermItemInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/permission/PermItemInfo;>;"
    :sswitch_3
    const-string v7, "android.permission.IPermissionManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/permission/IPermissionManager$Stub;->getPermInfoFromUid(I)Ljava/util/List;

    move-result-object v6

    .line 71
    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/permission/PermItemInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 77
    .end local v0           #_arg0:I
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/permission/PermItemInfo;>;"
    :sswitch_4
    const-string v7, "android.permission.IPermissionManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 84
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 89
    .local v3, _arg2:Landroid/net/Uri;
    :goto_1
    invoke-virtual {p0, v0, v2, v3}, Landroid/permission/IPermissionManager$Stub;->checkUidPermissionOperation(ILjava/lang/String;Landroid/net/Uri;)I

    move-result v5

    .line 90
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v3           #_arg2:Landroid/net/Uri;
    .end local v5           #_result:I
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/net/Uri;
    goto :goto_1

    .line 96
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/net/Uri;
    :sswitch_5
    const-string v9, "android.permission.IPermissionManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 103
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v2, v3}, Landroid/permission/IPermissionManager$Stub;->updateUidPermission(ILjava/lang/String;I)Z

    move-result v5

    .line 104
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v5, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 110
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v5           #_result:Z
    :sswitch_6
    const-string v9, "android.permission.IPermissionManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 119
    .local v4, _arg3:I
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/permission/IPermissionManager$Stub;->insertUidPermission(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 120
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v5, :cond_2

    move v7, v8

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 126
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    .end local v5           #_result:Z
    :sswitch_7
    const-string v9, "android.permission.IPermissionManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    sget-object v9, Landroid/permission/PermItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 129
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/permission/PermItemInfo;>;"
    invoke-virtual {p0, v1}, Landroid/permission/IPermissionManager$Stub;->updateBatUidPermission(Ljava/util/List;)Z

    move-result v5

    .line 130
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v5, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/permission/PermItemInfo;>;"
    .end local v5           #_result:Z
    :sswitch_8
    const-string v9, "android.permission.IPermissionManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    sget-object v9, Landroid/permission/PermItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 139
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/permission/PermItemInfo;>;"
    invoke-virtual {p0, v1}, Landroid/permission/IPermissionManager$Stub;->updateBatPkgPermission(Ljava/util/List;)Z

    move-result v5

    .line 140
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v5, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 146
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/permission/PermItemInfo;>;"
    .end local v5           #_result:Z
    :sswitch_9
    const-string v9, "android.permission.IPermissionManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    move v3, v8

    .line 153
    .local v3, _arg2:Z
    :goto_2
    invoke-virtual {p0, v0, v2, v3}, Landroid/permission/IPermissionManager$Stub;->installAndDeleteApk(ILjava/lang/String;Z)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v3           #_arg2:Z
    :cond_5
    move v3, v7

    .line 152
    goto :goto_2

    .line 159
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_a
    const-string v9, "android.permission.IPermissionManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/permission/IPermissionManager$Stub;->getSinglePermStatus(Ljava/lang/String;)Z

    move-result v5

    .line 163
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v5, :cond_6

    move v7, v8

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 169
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_b
    const-string v9, "android.permission.IPermissionManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 172
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/permission/IPermissionManager$Stub;->getUidtatus(I)Z

    move-result v5

    .line 173
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v5, :cond_7

    move v7, v8

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 179
    .end local v0           #_arg0:I
    .end local v5           #_result:Z
    :sswitch_c
    const-string v7, "android.permission.IPermissionManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 184
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/permission/IPermissionManager$Stub;->setSinglePermStatus(Ljava/lang/String;I)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 190
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_d
    const-string v7, "android.permission.IPermissionManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/permission/IPermissionManager$Stub;->setUidtatus(II)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 201
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_e
    const-string v9, "android.permission.IPermissionManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    move v0, v8

    .line 204
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/permission/IPermissionManager$Stub;->setClickFlag(Z)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_8
    move v0, v7

    .line 203
    goto :goto_3

    .line 210
    :sswitch_f
    const-string v7, "android.permission.IPermissionManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/permission/IPermissionManager$Stub;->setOprationType(I)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 219
    .end local v0           #_arg0:I
    :sswitch_10
    const-string v7, "android.permission.IPermissionManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 227
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 228
    .restart local v4       #_arg3:I
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/permission/IPermissionManager$Stub;->updateUidPermissionShowflag(ILjava/lang/String;II)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 234
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :sswitch_11
    const-string v7, "android.permission.IPermissionManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/permission/OnShowPermDlgListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/OnShowPermDlgListener;

    move-result-object v0

    .line 237
    .local v0, _arg0:Landroid/permission/OnShowPermDlgListener;
    invoke-virtual {p0, v0}, Landroid/permission/IPermissionManager$Stub;->setOnShowPermDlgListener(Landroid/permission/OnShowPermDlgListener;)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
