.class public Landroid/qrom/powersave/QromCommon;
.super Ljava/lang/Object;
.source "QromCommon.java"


# static fields
.field public static final ACTION_NOTIFY_USER_RESULT:Ljava/lang/String; = "qrom.intent.action.NOTIFY_USER_RESULT"

.field public static final ACTION_NOTIFY_USER_TIPS:Ljava/lang/String; = "qrom.intent.action.NOTIFY_USER_TIPS"

.field public static final MASK_RECEIVE_USER_TIPS:I = 0x2

.field public static final MASK_RESULT_TYPE_CLEAN:I = 0x4

.field public static final MASK_RESULT_TYPE_CPU:I = 0x2

.field public static final MASK_RESULT_TYPE_MEMORY:I = 0x1

.field public static final MASK_RESULT_TYPE_POWER:I = 0x3

.field public static final MASK_SEND_USER_TIPS:I = 0x1

.field public static final RESULT_DEFAULT:I = 0x0

.field public static final RESULT_EXTRA_APP_NUM:Ljava/lang/String; = "app_num"

.field public static final RESULT_EXTRA_DATA:Ljava/lang/String; = "res_data"

.field public static final RESULT_EXTRA_TYPE:Ljava/lang/String; = "res_type"

.field public static final RESULT_FAIL:I = -0x1

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_QROM_DISENABLE:I = 0x2

.field public static final STATE_QROM_ENABLE:I = 0x3

.field public static final STATE_QROM_NEITHER:I = 0x0

.field public static final STATE_USER_ENABLE:I = 0x4

.field public static final STATE_USER_NEITHER:I = 0x1

.field public static final TIPS_EXTRA_NAME:Ljava/lang/String; = "tips_code"

.field public static final TIPS_PARCEL_EXTRA_NAME:Ljava/lang/String; = "tips_parcel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static noteAudioStart(I)V
    .locals 3
    .parameter "pid"

    .prologue
    .line 42
    :try_start_0
    const-string/jumbo v2, "qrom_proc_stat"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/qrom/powersave/IQromProcStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/qrom/powersave/IQromProcStats;

    move-result-object v1

    .line 43
    .local v1, sService:Landroid/qrom/powersave/IQromProcStats;
    if-eqz v1, :cond_0

    .line 44
    invoke-interface {v1, p0}, Landroid/qrom/powersave/IQromProcStats;->noteAudioStart(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1           #sService:Landroid/qrom/powersave/IQromProcStats;
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static noteAudioStop(I)V
    .locals 3
    .parameter "pid"

    .prologue
    .line 54
    :try_start_0
    const-string/jumbo v2, "qrom_proc_stat"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/qrom/powersave/IQromProcStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/qrom/powersave/IQromProcStats;

    move-result-object v1

    .line 55
    .local v1, sService:Landroid/qrom/powersave/IQromProcStats;
    if-eqz v1, :cond_0

    .line 56
    invoke-interface {v1, p0}, Landroid/qrom/powersave/IQromProcStats;->noteAudioStop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1           #sService:Landroid/qrom/powersave/IQromProcStats;
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
