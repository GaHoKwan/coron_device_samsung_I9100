.class public Lcom/android/stk/StkDialogActivity;
.super Landroid/app/Activity;
.source "StkDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field appService:Lcom/android/stk/StkAppService;

.field private mContext:Landroid/content/Context;

.field mPauseRelease:Z

.field mSentTerminalResponse:Z

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    .line 60
    new-instance v0, Lcom/android/stk/StkDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkDialogActivity$1;-><init>(Lcom/android/stk/StkDialogActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 298
    new-instance v0, Lcom/android/stk/StkDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/stk/StkDialogActivity$2;-><init>(Lcom/android/stk/StkDialogActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/StkDialogActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/stk/StkDialogActivity;->sendResponse(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/stk/StkDialogActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/stk/StkDialogActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelTimeOut()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 266
    return-void
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 257
    if-eqz p1, :cond_0

    .line 258
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0
.end method

.method private sendResponse(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 252
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    .line 253
    return-void
.end method

.method private sendResponse(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    const-string v1, "confirm"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/stk/StkDialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkDialogActivity;->mSentTerminalResponse:Z

    .line 249
    return-void
.end method

.method private startPauseTimeOut()V
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 296
    return-void
.end method

.method private startTimeOut()V
    .locals 5

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    .line 271
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v1}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v0

    .line 272
    .local v0, dialogDuration:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "raw data dialogDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    if-nez v0, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-nez v1, :cond_1

    .line 283
    const/16 v0, 0x1388

    .line 288
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final dialogDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 291
    return-void

    .line 285
    :cond_1
    const v0, 0x9c40

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/16 v2, 0xd

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, input:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 159
    :sswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    .line 160
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    .line 163
    :sswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/stk/StkDialogActivity;->sendResponse(IZ)V

    .line 164
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    .line 157
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070006 -> :sswitch_0
        0x7f070011 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 224
    const-string v0, "onConfigurationChanged"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 226
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x3

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    iget-object v5, v5, Lcom/android/stk/StkAppService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_0

    .line 95
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    iget-object v5, v5, Lcom/android/stk/StkAppService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 97
    :cond_0
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v5}, Lcom/android/stk/StkAppService;->disableKeyguard()V

    .line 99
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/stk/StkDialogActivity;->mSentTerminalResponse:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/stk/StkDialogActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 101
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-nez v5, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    .line 152
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/stk/StkDialogActivity;->requestWindowFeature(I)Z

    .line 107
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 108
    .local v4, window:Landroid/view/Window;
    const v5, 0x7f030004

    invoke-virtual {p0, v5}, Lcom/android/stk/StkDialogActivity;->setContentView(I)V

    .line 109
    const v5, 0x7f07000f

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 112
    .local v2, mMessageView:Landroid/widget/TextView;
    const v5, 0x7f070006

    invoke-virtual {p0, v5}, Lcom/android/stk/StkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 113
    .local v3, okButton:Landroid/widget/Button;
    const v5, 0x7f070011

    invoke-virtual {p0, v5}, Lcom/android/stk/StkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 115
    .local v0, cancelButton:Landroid/widget/Button;
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v6, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v7, "\r\n"

    const-string v8, "\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 130
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v6, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v7, "\r"

    const-string v8, "\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 133
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/stk/StkDialogActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v5, :cond_3

    .line 135
    :cond_2
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_3
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v5, :cond_4

    .line 139
    const v5, 0x10806b0

    invoke-virtual {v4, v9, v5}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 146
    :goto_1
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/stk/StkDialogActivity;->mContext:Landroid/content/Context;

    .line 147
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "com.android.samsungtest.EVENTHANDLE_BUTTON"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v5, p0, Lcom/android/stk/StkDialogActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/stk/StkDialogActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/stk/StkDialogActivity;->mPauseRelease:Z

    .line 151
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->startPauseTimeOut()V

    goto/16 :goto_0

    .line 142
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_4
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v9, v5}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 176
    :pswitch_0
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/stk/StkDialogActivity;->sendResponse(I)V

    .line 177
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 192
    const-string v0, "onPause time out cancel"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 194
    iget-boolean v0, p0, Lcom/android/stk/StkDialogActivity;->mPauseRelease:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/stk/StkDialogActivity;->mSentTerminalResponse:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    iget-object v0, v0, Lcom/android/stk/StkAppService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    const-string v0, "before release wakeup"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    iget-object v0, v0, Lcom/android/stk/StkAppService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    iget-object v0, v0, Lcom/android/stk/StkAppService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 205
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    invoke-virtual {v0}, Lcom/android/stk/StkAppService;->enableKeyguard()V

    .line 206
    iget-boolean v0, p0, Lcom/android/stk/StkDialogActivity;->mSentTerminalResponse:Z

    if-nez v0, :cond_2

    .line 207
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/stk/StkDialogActivity;->sendResponse(I)V

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/android/stk/StkDialogActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 210
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->cancelTimeOut()V

    .line 211
    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    .line 213
    :cond_3
    return-void

    .line 202
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->appService:Lcom/android/stk/StkAppService;

    iget-object v1, v1, Lcom/android/stk/StkAppService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 239
    const-string v0, "text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 240
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 185
    const-string v0, "onResume startTimeOut"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 187
    invoke-direct {p0}, Lcom/android/stk/StkDialogActivity;->startTimeOut()V

    .line 188
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 232
    const-string v0, "text"

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 233
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 217
    const-string v0, "onStop finish dialog and send TR as END SESSION"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 219
    return-void
.end method
