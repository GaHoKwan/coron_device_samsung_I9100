.class Lcom/android/stk/StkInputActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "StkInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkInputActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0xc

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 434
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.samsungtest.EVENTHANDLE_TEXTANDBUTTON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 435
    const/4 v3, 0x0

    .line 436
    .local v3, inputString:Ljava/lang/String;
    const/4 v1, -0x1

    .line 437
    .local v1, button:I
    const-string v4, "got intent"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    const-string v4, "Value"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 439
    const-string v4, "Button"

    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 440
    if-eqz v3, :cond_0

    .line 441
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    #getter for: Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/stk/StkInputActivity;->access$100(Lcom/android/stk/StkInputActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 442
    :cond_0
    if-nez v1, :cond_2

    .line 443
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    const/16 v5, 0x15

    #calls: Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V
    invoke-static {v4, v5, v8, v6}, Lcom/android/stk/StkInputActivity;->access$200(Lcom/android/stk/StkInputActivity;ILjava/lang/String;Z)V

    .line 444
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-virtual {v4}, Lcom/android/stk/StkInputActivity;->finish()V

    .line 488
    .end local v1           #button:I
    .end local v3           #inputString:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 446
    .restart local v1       #button:I
    .restart local v3       #inputString:Ljava/lang/String;
    :cond_2
    if-ne v1, v7, :cond_1

    .line 447
    const/4 v2, 0x0

    .line 448
    .local v2, input:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    #calls: Lcom/android/stk/StkInputActivity;->verfiyTypedText()Z
    invoke-static {v4}, Lcom/android/stk/StkInputActivity;->access$300(Lcom/android/stk/StkInputActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 451
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    #getter for: Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/stk/StkInputActivity;->access$100(Lcom/android/stk/StkInputActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    #calls: Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V
    invoke-static {v4, v10, v2, v6}, Lcom/android/stk/StkInputActivity;->access$200(Lcom/android/stk/StkInputActivity;ILjava/lang/String;Z)V

    .line 454
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-virtual {v4}, Lcom/android/stk/StkInputActivity;->finish()V

    goto :goto_0

    .line 458
    .end local v1           #button:I
    .end local v2           #input:Ljava/lang/String;
    .end local v3           #inputString:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.samsungtest.EVENTHANDLE_BUTTON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 459
    const-string v3, ""

    .line 460
    .restart local v3       #inputString:Ljava/lang/String;
    const/4 v1, -0x1

    .line 461
    .restart local v1       #button:I
    const-string v4, "got intent"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    const-string v4, "Button"

    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 463
    if-nez v1, :cond_4

    .line 464
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    const/16 v5, 0x15

    #calls: Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V
    invoke-static {v4, v5, v8, v6}, Lcom/android/stk/StkInputActivity;->access$200(Lcom/android/stk/StkInputActivity;ILjava/lang/String;Z)V

    .line 465
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-virtual {v4}, Lcom/android/stk/StkInputActivity;->finish()V

    goto :goto_0

    .line 467
    :cond_4
    if-ne v1, v7, :cond_5

    .line 468
    const/4 v2, 0x0

    .line 469
    .restart local v2       #input:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    #calls: Lcom/android/stk/StkInputActivity;->verfiyTypedText()Z
    invoke-static {v4}, Lcom/android/stk/StkInputActivity;->access$300(Lcom/android/stk/StkInputActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 472
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    #getter for: Lcom/android/stk/StkInputActivity;->mTextIn:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/stk/StkInputActivity;->access$100(Lcom/android/stk/StkInputActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    #calls: Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V
    invoke-static {v4, v10, v2, v6}, Lcom/android/stk/StkInputActivity;->access$200(Lcom/android/stk/StkInputActivity;ILjava/lang/String;Z)V

    .line 475
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-virtual {v4}, Lcom/android/stk/StkInputActivity;->finish()V

    goto :goto_0

    .line 477
    .end local v2           #input:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 478
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    const/16 v5, 0x16

    #calls: Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V
    invoke-static {v4, v5, v8, v6}, Lcom/android/stk/StkInputActivity;->access$200(Lcom/android/stk/StkInputActivity;ILjava/lang/String;Z)V

    .line 479
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-virtual {v4}, Lcom/android/stk/StkInputActivity;->finish()V

    goto/16 :goto_0

    .line 482
    .end local v1           #button:I
    .end local v3           #inputString:Ljava/lang/String;
    :cond_6
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 483
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    #getter for: Lcom/android/stk/StkInputActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/stk/StkInputActivity;->access$400(Lcom/android/stk/StkInputActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 484
    .local v0, airPlaneEnabled:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received  ACTION_AIRPLANE_MODE_CHANGED = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    if-ne v0, v7, :cond_1

    .line 486
    iget-object v4, p0, Lcom/android/stk/StkInputActivity$2;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-virtual {v4}, Lcom/android/stk/StkInputActivity;->finish()V

    goto/16 :goto_0
.end method