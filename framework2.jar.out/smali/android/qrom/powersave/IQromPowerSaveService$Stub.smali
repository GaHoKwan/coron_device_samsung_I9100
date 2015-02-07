.class public abstract Landroid/qrom/powersave/IQromPowerSaveService$Stub;
.super Landroid/os/Binder;
.source "IQromPowerSaveService.java"

# interfaces
.implements Landroid/qrom/powersave/IQromPowerSaveService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/qrom/powersave/IQromPowerSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/qrom/powersave/IQromPowerSaveService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.qrom.powersave.IQromPowerSaveService"

.field static final TRANSACTION_getAllProctectedProcessList:I = 0x8

.field static final TRANSACTION_getProcessInfo:I = 0x2

.field static final TRANSACTION_getProctectedProcessList:I = 0x3

.field static final TRANSACTION_getQromProctectedList:I = 0x4

.field static final TRANSACTION_getQromProctectedProcessList:I = 0x9

.field static final TRANSACTION_getRunningApps:I = 0x7

.field static final TRANSACTION_killProcesses:I = 0x1

.field static final TRANSACTION_modifyProctedApp:I = 0x5

.field static final TRANSACTION_setNextTipTime:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.qrom.powersave.IQromPowerSaveService"

    invoke-virtual {p0, p0, v0}, Landroid/qrom/powersave/IQromPowerSaveService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/qrom/powersave/IQromPowerSaveService;
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
    const-string v1, "android.qrom.powersave.IQromPowerSaveService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/qrom/powersave/IQromPowerSaveService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/qrom/powersave/IQromPowerSaveService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/qrom/powersave/IQromPowerSaveService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/qrom/powersave/IQromPowerSaveService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v7, "android.qrom.powersave.IQromPowerSaveService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "android.qrom.powersave.IQromPowerSaveService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 51
    .local v2, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/qrom/powersave/IQromProcessInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/qrom/powersave/IQromProcessInfoListener;

    move-result-object v3

    .line 52
    .local v3, _arg1:Landroid/qrom/powersave/IQromProcessInfoListener;
    invoke-virtual {p0, v2, v3}, Landroid/qrom/powersave/IQromPowerSaveService$Stub;->killProcesses(Ljava/util/List;Landroid/qrom/powersave/IQromProcessInfoListener;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v2           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #_arg1:Landroid/qrom/powersave/IQromProcessInfoListener;
    :sswitch_2
    const-string v7, "android.qrom.powersave.IQromPowerSaveService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/qrom/powersave/IQromProcessInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/qrom/powersave/IQromProcessInfoListener;

    move-result-object v0

    .line 61
    .local v0, _arg0:Landroid/qrom/powersave/IQromProcessInfoListener;
    invoke-virtual {p0, v0}, Landroid/qrom/powersave/IQromPowerSaveService$Stub;->getProcessInfo(Landroid/qrom/powersave/IQromProcessInfoListener;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:Landroid/qrom/powersave/IQromProcessInfoListener;
    :sswitch_3
    const-string v7, "android.qrom.powersave.IQromPowerSaveService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/qrom/powersave/IQromProcessInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/qrom/powersave/IQromProcessInfoListener;

    move-result-object v0

    .line 70
    .restart local v0       #_arg0:Landroid/qrom/powersave/IQromProcessInfoListener;
    invoke-virtual {p0, v0}, Landroid/qrom/powersave/IQromPowerSaveService$Stub;->getProctectedProcessList(Landroid/qrom/powersave/IQromProcessInfoListener;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:Landroid/qrom/powersave/IQromProcessInfoListener;
    :sswitch_4
    const-string v7, "android.qrom.powersave.IQromPowerSaveService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/qrom/powersave/IQromProcessInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/qrom/powersave/IQromProcessInfoListener;

    move-result-object v0

    .line 79
    .restart local v0       #_arg0:Landroid/qrom/powersave/IQromProcessInfoListener;
    invoke-virtual {p0, v0}, Landroid/qrom/powersave/IQromPowerSaveService$Stub;->getQromProctectedList(Landroid/qrom/powersave/IQromProcessInfoListener;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    .end local v0           #_arg0:Landroid/qrom/powersave/IQromProcessInfoListener;
    :sswitch_5
    const-string v7, "android.qrom.powersave.IQromPowerSaveService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v3, v6

    .line 90
    .local v3, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v3}, Landroid/qrom/powersave/IQromPowerSaveService$Stub;->modifyProctedApp(Ljava/lang/String;Z)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v3           #_arg1:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 96
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6
    const-string v7, "android.qrom.powersave.IQromPowerSaveService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 99
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/qrom/powersave/IQromPowerSaveService$Stub;->setNextTipTime(J)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 105
    .end local v0           #_arg0:J
    :sswitch_7
    const-string v7, "android.qrom.powersave.IQromPowerSaveService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/qrom/powersave/IQromPowerSaveService$Stub;->getRunningApps()Ljava/util/List;

    move-result-object v4

    .line 107
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Landroid/qrom/powersave/ProcessInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 113
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/qrom/powersave/ProcessInfo;>;"
    :sswitch_8
    const-string v7, "android.qrom.powersave.IQromPowerSaveService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/qrom/powersave/IQromPowerSaveService$Stub;->getAllProctectedProcessList()Ljava/util/List;

    move-result-object v5

    .line 115
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 121
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9
    const-string v7, "android.qrom.powersave.IQromPowerSaveService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/qrom/powersave/IQromPowerSaveService$Stub;->getQromProctectedProcessList()Ljava/util/List;

    move-result-object v5

    .line 123
    .restart local v5       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
