.class public Landroid/newbeesystem/ProcStats;
.super Ljava/lang/Object;
.source "ProcStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACQUIRE:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/newbeesystem/ProcStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final RELEASE:I = 0x1


# instance fields
.field bRelease:I

.field keepWakeup:I

.field pid:I

.field pkgName:Ljava/lang/String;

.field requestTime:I

.field startTime:J

.field uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Landroid/newbeesystem/ProcStats$1;

    invoke-direct {v0}, Landroid/newbeesystem/ProcStats$1;-><init>()V

    sput-object v0, Landroid/newbeesystem/ProcStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/newbeesystem/ProcStats;->startTime:J

    .line 28
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/newbeesystem/ProcStats;->pid:I

    .line 33
    iput p2, p0, Landroid/newbeesystem/ProcStats;->uid:I

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/newbeesystem/ProcStats;->startTime:J

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-direct {p0, p1}, Landroid/newbeesystem/ProcStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/newbeesystem/ProcStats$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Landroid/newbeesystem/ProcStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/newbeesystem/ProcStats;->pkgName:Ljava/lang/String;

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/newbeesystem/ProcStats;->startTime:J

    .line 41
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/newbeesystem/ProcStats;->pid:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/newbeesystem/ProcStats;->uid:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/newbeesystem/ProcStats;->pkgName:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/newbeesystem/ProcStats;->startTime:J

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/newbeesystem/ProcStats;->keepWakeup:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/newbeesystem/ProcStats;->requestTime:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/newbeesystem/ProcStats;->bRelease:I

    .line 164
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getKeepWakeup()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/newbeesystem/ProcStats;->keepWakeup:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Landroid/newbeesystem/ProcStats;->pid:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/newbeesystem/ProcStats;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTime()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Landroid/newbeesystem/ProcStats;->requestTime:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Landroid/newbeesystem/ProcStats;->startTime:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Landroid/newbeesystem/ProcStats;->uid:I

    return v0
.end method

.method public getbRelease()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Landroid/newbeesystem/ProcStats;->bRelease:I

    return v0
.end method

.method public requestIncrese()V
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Landroid/newbeesystem/ProcStats;->requestTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/newbeesystem/ProcStats;->requestTime:I

    .line 52
    return-void
.end method

.method public setKeepWakeup(I)V
    .locals 0
    .parameter "keepWakeup"

    .prologue
    .line 101
    iput p1, p0, Landroid/newbeesystem/ProcStats;->keepWakeup:I

    .line 102
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .parameter "pid"

    .prologue
    .line 61
    iput p1, p0, Landroid/newbeesystem/ProcStats;->pid:I

    .line 62
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 81
    iput-object p1, p0, Landroid/newbeesystem/ProcStats;->pkgName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setRequestTime(I)V
    .locals 0
    .parameter "requestTime"

    .prologue
    .line 111
    iput p1, p0, Landroid/newbeesystem/ProcStats;->requestTime:I

    .line 112
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 91
    iput-wide p1, p0, Landroid/newbeesystem/ProcStats;->startTime:J

    .line 92
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 71
    iput p1, p0, Landroid/newbeesystem/ProcStats;->uid:I

    .line 72
    return-void
.end method

.method public setbRelease(I)V
    .locals 0
    .parameter "bRelease"

    .prologue
    .line 119
    iput p1, p0, Landroid/newbeesystem/ProcStats;->bRelease:I

    .line 120
    return-void
.end method

.method public wakelockIncrese()V
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Landroid/newbeesystem/ProcStats;->keepWakeup:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/newbeesystem/ProcStats;->keepWakeup:I

    .line 23
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 146
    iget v0, p0, Landroid/newbeesystem/ProcStats;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Landroid/newbeesystem/ProcStats;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Landroid/newbeesystem/ProcStats;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-wide v0, p0, Landroid/newbeesystem/ProcStats;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    iget v0, p0, Landroid/newbeesystem/ProcStats;->keepWakeup:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Landroid/newbeesystem/ProcStats;->requestTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Landroid/newbeesystem/ProcStats;->bRelease:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    return-void
.end method
