.class Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmergencyCall"
.end annotation


# instance fields
.field private mEmergencyCallText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1396
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1397
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->setFocusableInTouchMode(Z)V

    .line 1398
    return-void
.end method

.method static isCardIOError()Z
    .locals 3

    .prologue
    .line 1510
    const-string v1, "ril.pin_mode"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1511
    .local v0, pinMode:Ljava/lang/String;
    const-string v1, "3"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1512
    const/4 v1, 0x1

    .line 1514
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 1490
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 1505
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1492
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1493
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1502
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    move-object p1, p2

    .line 1503
    goto :goto_0

    .line 1505
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10403df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1402
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1404
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->updateText()V

    .line 1405
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1409
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1410
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 1414
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 1415
    const v0, 0x10202c8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    .line 1416
    return-void
.end method

.method public updateText()V
    .locals 6

    .prologue
    const v5, 0x1040403

    const v4, 0x10403ee

    .line 1420
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 1485
    :goto_0
    return-void

    .line 1422
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->useCtcPlmnConcept()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1423
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1427
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1428
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1429
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1431
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->isCardIOError()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1432
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040174

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1435
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1436
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1439
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_7

    .line 1440
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isNoServiceDisplayWhenNoSIM()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1441
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1444
    :cond_5
    #calls: Lcom/android/internal/policy/impl/sec/ClockWidget;->isEmergencyCallCapable()Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1445
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1448
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1451
    :cond_7
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_8

    .line 1452
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040406

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1455
    :cond_8
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_9

    .line 1456
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104040a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1459
    :cond_9
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_a

    .line 1460
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040408

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1463
    :cond_a
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_b

    .line 1464
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1466
    :cond_b
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_c

    .line 1467
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    const v3, 0x1040176

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1470
    :cond_c
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_f

    .line 1471
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isNoServiceDisplayWhenNoSIM()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1472
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1475
    :cond_d
    #calls: Lcom/android/internal/policy/impl/sec/ClockWidget;->isEmergencyCallCapable()Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1476
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1479
    :cond_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1483
    :cond_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method