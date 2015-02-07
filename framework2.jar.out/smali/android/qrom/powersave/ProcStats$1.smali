.class final Landroid/qrom/powersave/ProcStats$1;
.super Ljava/lang/Object;
.source "ProcStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/qrom/powersave/ProcStats;
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
        "Landroid/qrom/powersave/ProcStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/qrom/powersave/ProcStats;
    .locals 2
    .parameter "source"

    .prologue
    .line 130
    new-instance v0, Landroid/qrom/powersave/ProcStats;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/qrom/powersave/ProcStats;-><init>(Landroid/os/Parcel;Landroid/qrom/powersave/ProcStats$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Landroid/qrom/powersave/ProcStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/qrom/powersave/ProcStats;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/qrom/powersave/ProcStats;
    .locals 1
    .parameter "size"

    .prologue
    .line 135
    new-array v0, p1, [Landroid/qrom/powersave/ProcStats;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Landroid/qrom/powersave/ProcStats$1;->newArray(I)[Landroid/qrom/powersave/ProcStats;

    move-result-object v0

    return-object v0
.end method
