.class final Landroid/newbeesystem/AbnormalTips$1;
.super Ljava/lang/Object;
.source "AbnormalTips.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/newbeesystem/AbnormalTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/newbeesystem/AbnormalTips;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/newbeesystem/AbnormalTips;
    .locals 1
    .parameter "source"

    .prologue
    .line 74
    new-instance v0, Landroid/newbeesystem/AbnormalTips;

    invoke-direct {v0, p1}, Landroid/newbeesystem/AbnormalTips;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/newbeesystem/AbnormalTips$1;->createFromParcel(Landroid/os/Parcel;)Landroid/newbeesystem/AbnormalTips;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/newbeesystem/AbnormalTips;
    .locals 1
    .parameter "size"

    .prologue
    .line 77
    new-array v0, p1, [Landroid/newbeesystem/AbnormalTips;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/newbeesystem/AbnormalTips$1;->newArray(I)[Landroid/newbeesystem/AbnormalTips;

    move-result-object v0

    return-object v0
.end method