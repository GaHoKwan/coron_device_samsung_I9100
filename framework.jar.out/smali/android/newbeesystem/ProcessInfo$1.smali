.class final Landroid/newbeesystem/ProcessInfo$1;
.super Ljava/lang/Object;
.source "ProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/newbeesystem/ProcessInfo;
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
        "Landroid/newbeesystem/ProcessInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/newbeesystem/ProcessInfo;
    .locals 1
    .parameter "source"

    .prologue
    .line 111
    new-instance v0, Landroid/newbeesystem/ProcessInfo;

    invoke-direct {v0, p1}, Landroid/newbeesystem/ProcessInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Landroid/newbeesystem/ProcessInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/newbeesystem/ProcessInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/newbeesystem/ProcessInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 114
    new-array v0, p1, [Landroid/newbeesystem/ProcessInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Landroid/newbeesystem/ProcessInfo$1;->newArray(I)[Landroid/newbeesystem/ProcessInfo;

    move-result-object v0

    return-object v0
.end method
