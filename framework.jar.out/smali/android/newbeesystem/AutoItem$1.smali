.class final Landroid/newbeesystem/AutoItem$1;
.super Ljava/lang/Object;
.source "AutoItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/newbeesystem/AutoItem;
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
        "Landroid/newbeesystem/AutoItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/newbeesystem/AutoItem;
    .locals 2
    .parameter "source"

    .prologue
    .line 65
    new-instance v0, Landroid/newbeesystem/AutoItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/newbeesystem/AutoItem;-><init>(Landroid/os/Parcel;Landroid/newbeesystem/AutoItem$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/newbeesystem/AutoItem$1;->createFromParcel(Landroid/os/Parcel;)Landroid/newbeesystem/AutoItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/newbeesystem/AutoItem;
    .locals 1
    .parameter "size"

    .prologue
    .line 68
    new-array v0, p1, [Landroid/newbeesystem/AutoItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/newbeesystem/AutoItem$1;->newArray(I)[Landroid/newbeesystem/AutoItem;

    move-result-object v0

    return-object v0
.end method
