.class public abstract Landroid/newbeesystem/INewbeeSystemAppService$Stub;
.super Landroid/os/Binder;
.source "INewbeeSystemAppService.java"

# interfaces
.implements Landroid/newbeesystem/INewbeeSystemAppService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/newbeesystem/INewbeeSystemAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/newbeesystem/INewbeeSystemAppService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.newbeesystem.INewbeeSystemAppService"

.field static final TRANSACTION_getAllProctectedProcessList:I = 0xc

.field static final TRANSACTION_getAppInfos:I = 0x9

.field static final TRANSACTION_getNBProctectedProcessList:I = 0xd

.field static final TRANSACTION_getNewbeeProctectedList:I = 0x6

.field static final TRANSACTION_getProcessInfo:I = 0x4

.field static final TRANSACTION_getProctectedProcessList:I = 0x5

.field static final TRANSACTION_getRunningApps:I = 0xb

.field static final TRANSACTION_installPackageList:I = 0x2

.field static final TRANSACTION_killProcesses:I = 0x3

.field static final TRANSACTION_modifyProctedApp:I = 0x7

.field static final TRANSACTION_setAutoStartComponent:I = 0xa

.field static final TRANSACTION_setNextTipTime:I = 0x8

.field static final TRANSACTION_unInstallPackageList:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.newbeesystem.INewbeeSystemAppService"

    invoke-virtual {p0, p0, v0}, Landroid/newbeesystem/INewbeeSystemAppService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/newbeesystem/INewbeeSystemAppService;
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
    const-string v1, "android.newbeesystem.INewbeeSystemAppService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/newbeesystem/INewbeeSystemAppService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/newbeesystem/INewbeeSystemAppService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/newbeesystem/INewbeeSystemAppService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/newbeesystem/INewbeeSystemAppService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v8, "android.newbeesystem.INewbeeSystemAppService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v8, "android.newbeesystem.INewbeeSystemAppService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 51
    .local v2, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/newbeesystem/INewbeePackageChangeOnListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/newbeesystem/INewbeePackageChangeOnListener;

    move-result-object v3

    .line 52
    .local v3, _arg1:Landroid/newbeesystem/INewbeePackageChangeOnListener;
    invoke-virtual {p0, v2, v3}, Landroid/newbeesystem/INewbeeSystemAppService$Stub;->unInstallPackageList(Ljava/util/List;Landroid/newbeesystem/INewbeePackageChangeOnListener;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v2           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_arg1:Landroid/newbeesystem/INewbeePackageChangeOnListener;
    :sswitch_2
    const-string v8, "android.newbeesystem.INewbeeSystemAppService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 62
    .restart local v2       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/newbeesystem/INewbeePackageChangeOnListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/newbeesystem/INewbeePackageChangeOnListener;

    move-result-object v3

    .line 63
    .restart local v3       #_arg1:Landroid/newbeesystem/INewbeePackageChangeOnListener;
    invoke-virtual {p0, v2, v3}, Landroid/newbeesystem/INewbeeSystemAppService$Stub;->installPackageList(Ljava/util/List;Landroid/newbeesystem/INewbeePackageChangeOnListener;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v2           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_arg1:Landroid/newbeesystem/INewbeePackageChangeOnListener;
    :sswitch_3
    const-string v8, "android.newbeesystem.INewbeeSystemAppService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 73
    .restart local v2       #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/newbeesystem/INewbeeProcessInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/newbeesystem/INewbeeProcessInfoListener;

    move-result-object v3

    .line 74
    .local v3, _arg1:Landroid/newbeesystem/INewbeeProcessInfoListener;
    invoke-virtual {p0, v2, v3}, Landroid/newbeesystem/INewbeeSystemAppService$Stub;->killProcesses(Ljava/util/List;Landroid/newbeesystem/INewbeeProcessInfoListener;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v2           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_arg1:Landroid/newbeesystem/INewbeeProcessInfoListener;
    :sswitch_4
    const-string v8, "android.newbeesystem.INewbeeSystemAppService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/newbeesystem/INewbeeProcessInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/newbeesystem/INewbeeProcessInfoListener;

    move-result-object v0

    .line 83
    .local v0, _arg0:Landroid/newbeesystem/INewbeeProcessInfoListener;
    invoke-virtual {p0, v0}, Landroid/newbeesystem/INewbeeSystemAppService$Stub;->getProcessInfo(Landroid/newbeesystem/INewbeeProcessInfoListener;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v0           #_arg0:Landroid/newbeesystem/INewbeeProcessInfoListener;
    :sswitch_5
    const-string v8, "android.newbeesystem.INewbeeSystemAppService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/newbeesystem/INewbeeProcessInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/newbeesystem/INewbeeProcessInfoListener;

    move-result-object v0

    .line 92
    .restart local v0       #_arg0:Landroid/newbeesystem/INewbeeProcessInfoListener;
    invoke-virtual {p0, v0}, Landroid/newbeesystem/INewbeeSystemAppService$Stub;->getProctectedProcessList(Landroid/newbeesystem/INewbeeProcessInfoListener;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0           #_arg0:Landroid/newbeesystem/INewbeeProcessInfoListener;
    :sswitch_6
    const-string v8, "android.newbeesystem.INewbeeSystemAppService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/newbeesystem/INewbeeProcessInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/newbeesystem/INewbeeProcessInfoListener;

    move-result-object v0

    .line 101
    .restart local v0       #_arg0:Landroid/newbeesystem/INewbeeProcessInfoListener;
    invoke-virtual {p0, v0}, Landroid/newbeesystem/INewbeeSystemAppService$Stub;->getNewbeeProctectedList(Landroid/newbeesystem/INewbeeProcessInfoListener;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 107
    .end local v0           #_arg0:Landroid/newbeesystem/INewbeeProcessInfoListener;
    :sswitch_7
    const-string v8, "android.newbeesystem.INewbeeSystemAppService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v3, v7

    .line 112
    .local v3, _arg1:Z
    :cond_0
    invoke-virtual {p0, v0, v3}, Landroid/newbeesystem/INewbeeSystemAppService$Stub;->modifyProctedApp(Ljava/lang/String;Z)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 118
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Z
    :sswitch_8
    const-string v8, "android.newbeesystem.INewbeeSystemAppService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 121
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/newbeesystem/INewbeeSystemAppService$Stub;->setNextTipTime(J)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    .end local v0           #_arg0:J
    :sswitch_9
    const-string v8, "android.newbeesystem.INewbeeSystemAppService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v0, v7

    .line 131
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/newbeesystem/INewbeeAutoStartDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/newbeesystem/INewbeeAutoStartDataObserver;

    move-result-object v3

    .line 132
    .local v3, _arg1:Landroid/newbeesystem/INewbeeAutoStartDataObserver;
    invoke-virtual {p0, v0, v3}, Landroid/newbeesystem/INewbeeSystemAppService$Stub;->getAppInfos(ZLandroid/newbeesystem/INewbeeAutoStartDataObserver;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_arg1:Landroid/newbeesystem/INewbeeAutoStartDataObserver;
    :cond_1
    move v0, v3

    .line 129
    goto :goto_1

    .line 138
    :sswitch_a
    const-string v8, "android.newbeesystem.INewbeeSystemAppService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v3, v7

    .line 144
    .local v3, _arg1:Z
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/newbeesystem/INewbeeAutoStartDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/newbeesystem/INewbeeAutoStartDataObserver;

    move-result-object v4

    .line 145
    .local v4, _arg2:Landroid/newbeesystem/INewbeeAutoStartDataObserver;
    invoke-virtual {p0, v0, v3, v4}, Landroid/newbeesystem/INewbeeSystemAppService$Stub;->setAutoStartComponent(Ljava/lang/String;ZLandroid/newbeesystem/INewbeeAutoStartDataObserver;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 151
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Landroid/newbeesystem/INewbeeAutoStartDataObserver;
    :sswitch_b
    const-string v8, "android.newbeesystem.INewbeeSystemAppService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/newbeesystem/INewbeeSystemAppService$Stub;->getRunningApps()Ljava/util/List;

    move-result-object v5

    .line 153
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/newbeesystem/ProcessInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 159
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/newbeesystem/ProcessInfo;>;"
    :sswitch_c
    const-string v8, "android.newbeesystem.INewbeeSystemAppService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Landroid/newbeesystem/INewbeeSystemAppService$Stub;->getAllProctectedProcessList()Ljava/util/List;

    move-result-object v6

    .line 161
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 167
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_d
    const-string v8, "android.newbeesystem.INewbeeSystemAppService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/newbeesystem/INewbeeSystemAppService$Stub;->getNBProctectedProcessList()Ljava/util/List;

    move-result-object v6

    .line 169
    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
