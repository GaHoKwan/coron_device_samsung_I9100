.class public abstract Landroid/qrom/powersave/IQromProcStats$Stub;
.super Landroid/os/Binder;
.source "IQromProcStats.java"

# interfaces
.implements Landroid/qrom/powersave/IQromProcStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/qrom/powersave/IQromProcStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/qrom/powersave/IQromProcStats$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.qrom.powersave.IQromProcStats"

.field static final TRANSACTION_clearData:I = 0x5

.field static final TRANSACTION_getAlarmStats:I = 0x2

.field static final TRANSACTION_getAudioClients:I = 0x3

.field static final TRANSACTION_getLocationClients:I = 0x4

.field static final TRANSACTION_getWakelockStats:I = 0x1

.field static final TRANSACTION_noteAudioStart:I = 0x6

.field static final TRANSACTION_noteAudioStop:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.qrom.powersave.IQromProcStats"

    invoke-virtual {p0, p0, v0}, Landroid/qrom/powersave/IQromProcStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/qrom/powersave/IQromProcStats;
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
    const-string v1, "android.qrom.powersave.IQromProcStats"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/qrom/powersave/IQromProcStats;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/qrom/powersave/IQromProcStats;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/qrom/powersave/IQromProcStats$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/qrom/powersave/IQromProcStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "android.qrom.powersave.IQromProcStats"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "android.qrom.powersave.IQromProcStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/qrom/powersave/IQromProcStats$Stub;->getWakelockStats()Ljava/util/List;

    move-result-object v1

    .line 49
    .local v1, _result:Ljava/util/List;,"Ljava/util/List<Landroid/qrom/powersave/ProcStats;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 55
    .end local v1           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/qrom/powersave/ProcStats;>;"
    :sswitch_2
    const-string v4, "android.qrom.powersave.IQromProcStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/qrom/powersave/IQromProcStats$Stub;->getAlarmStats()Ljava/util/List;

    move-result-object v1

    .line 57
    .restart local v1       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/qrom/powersave/ProcStats;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 63
    .end local v1           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/qrom/powersave/ProcStats;>;"
    :sswitch_3
    const-string v4, "android.qrom.powersave.IQromProcStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/qrom/powersave/IQromProcStats$Stub;->getAudioClients()Ljava/util/List;

    move-result-object v2

    .line 65
    .local v2, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 71
    .end local v2           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_4
    const-string v4, "android.qrom.powersave.IQromProcStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/qrom/powersave/IQromProcStats$Stub;->getLocationClients()Ljava/util/List;

    move-result-object v2

    .line 73
    .restart local v2       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 79
    .end local v2           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string v4, "android.qrom.powersave.IQromProcStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/qrom/powersave/IQromProcStats$Stub;->clearData()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    :sswitch_6
    const-string v4, "android.qrom.powersave.IQromProcStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/qrom/powersave/IQromProcStats$Stub;->noteAudioStart(I)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v4, "android.qrom.powersave.IQromProcStats"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/qrom/powersave/IQromProcStats$Stub;->noteAudioStop(I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
