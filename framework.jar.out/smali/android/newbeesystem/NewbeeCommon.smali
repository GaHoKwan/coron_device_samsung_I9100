.class public Landroid/newbeesystem/NewbeeCommon;
.super Ljava/lang/Object;
.source "NewbeeCommon.java"


# static fields
.field public static final ACTION_NOTIFY_USER_RESULT:Ljava/lang/String; = "newbee.intent.action.NOTIFY_USER_RESULT"

.field public static final ACTION_NOTIFY_USER_TIPS:Ljava/lang/String; = "newbee.intent.action.NOTIFY_USER_TIPS"

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

.field public static final STATE_NEWBEE_DISENABLE:I = 0x2

.field public static final STATE_NEWBEE_ENABLE:I = 0x3

.field public static final STATE_NEWBEE_NEITHER:I = 0x0

.field public static final STATE_USER_ENABLE:I = 0x4

.field public static final STATE_USER_NEITHER:I = 0x1

.field public static final TIPS_EXTRA_NAME:Ljava/lang/String; = "tips_code"

.field public static final TIPS_PARCEL_EXTRA_NAME:Ljava/lang/String; = "tips_parcel"

.field private static mForbiddenPersistents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNewbeeForbiddenPersistent(Landroid/content/pm/ApplicationInfo;)Z
    .locals 12
    .parameter "ai"

    .prologue
    const/4 v8, 0x1

    .line 68
    sget-object v9, Landroid/newbeesystem/NewbeeCommon;->mForbiddenPersistents:Ljava/util/List;

    if-nez v9, :cond_2

    .line 69
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sput-object v9, Landroid/newbeesystem/NewbeeCommon;->mForbiddenPersistents:Ljava/util/List;

    .line 70
    const-string v2, "/data/newbee/not_allow_persistent.xml"

    .line 71
    .local v2, file:Ljava/lang/String;
    const/4 v4, 0x0

    .line 73
    .local v4, stream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    .end local v4           #stream:Ljava/io/FileInputStream;
    .local v5, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 75
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v3, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 80
    .local v7, type:I
    const/4 v9, 0x2

    if-ne v7, v9, :cond_1

    .line 81
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, tag:Ljava/lang/String;
    const-string/jumbo v9, "p"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 83
    const/4 v9, 0x0

    const-string v10, "apk"

    invoke-interface {v3, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, apk:Ljava/lang/String;
    sget-object v9, Landroid/newbeesystem/NewbeeCommon;->mForbiddenPersistents:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 88
    .end local v0           #apk:Ljava/lang/String;
    .end local v6           #tag:Ljava/lang/String;
    :cond_1
    if-ne v7, v8, :cond_0

    .line 92
    if-eqz v5, :cond_2

    .line 94
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    .end local v2           #file:Ljava/lang/String;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #stream:Ljava/io/FileInputStream;
    .end local v7           #type:I
    :cond_2
    :goto_0
    sget-object v9, Landroid/newbeesystem/NewbeeCommon;->mForbiddenPersistents:Ljava/util/List;

    iget-object v10, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 104
    const-string/jumbo v9, "persistent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "remove persistent for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_1
    return v8

    .line 95
    .restart local v2       #file:Ljava/lang/String;
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    .restart local v7       #type:I
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #stream:Ljava/io/FileInputStream;
    .end local v7           #type:I
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    if-eqz v4, :cond_2

    .line 94
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 95
    :catch_2
    move-exception v1

    .line 97
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v4, :cond_3

    .line 94
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 98
    :cond_3
    :goto_4
    throw v8

    .line 95
    :catch_3
    move-exception v1

    .line 97
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 108
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/lang/String;
    .end local v4           #stream:Ljava/io/FileInputStream;
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 92
    .restart local v2       #file:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 89
    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static noteAudioStart(I)V
    .locals 3
    .parameter "pid"

    .prologue
    .line 119
    :try_start_0
    const-string/jumbo v2, "newbee_proc_stat"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/newbeesystem/INewbeeProcStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/newbeesystem/INewbeeProcStats;

    move-result-object v1

    .line 120
    .local v1, sService:Landroid/newbeesystem/INewbeeProcStats;
    if-eqz v1, :cond_0

    .line 121
    invoke-interface {v1, p0}, Landroid/newbeesystem/INewbeeProcStats;->noteAudioStart(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v1           #sService:Landroid/newbeesystem/INewbeeProcStats;
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static noteAudioStop(I)V
    .locals 3
    .parameter "pid"

    .prologue
    .line 131
    :try_start_0
    const-string/jumbo v2, "newbee_proc_stat"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/newbeesystem/INewbeeProcStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/newbeesystem/INewbeeProcStats;

    move-result-object v1

    .line 132
    .local v1, sService:Landroid/newbeesystem/INewbeeProcStats;
    if-eqz v1, :cond_0

    .line 133
    invoke-interface {v1, p0}, Landroid/newbeesystem/INewbeeProcStats;->noteAudioStop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1           #sService:Landroid/newbeesystem/INewbeeProcStats;
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
