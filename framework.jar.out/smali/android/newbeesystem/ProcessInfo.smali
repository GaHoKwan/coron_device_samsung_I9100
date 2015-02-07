.class public Landroid/newbeesystem/ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/newbeesystem/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private MemorySize:F

.field private cpuRatio:F

.field private cpuTime:J

.field private pTips:I

.field private pType:I

.field private packageName:Ljava/lang/String;

.field private pid:I

.field private processStartTime:J

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Landroid/newbeesystem/ProcessInfo$1;

    invoke-direct {v0}, Landroid/newbeesystem/ProcessInfo$1;-><init>()V

    sput-object v0, Landroid/newbeesystem/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Landroid/newbeesystem/ProcessInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getCpuRatio()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Landroid/newbeesystem/ProcessInfo;->cpuRatio:F

    return v0
.end method

.method public getCpuTime()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Landroid/newbeesystem/ProcessInfo;->cpuTime:J

    return-wide v0
.end method

.method public getMemorySize()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/newbeesystem/ProcessInfo;->MemorySize:F

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/newbeesystem/ProcessInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Landroid/newbeesystem/ProcessInfo;->pid:I

    return v0
.end method

.method public getProcessStartTime()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Landroid/newbeesystem/ProcessInfo;->processStartTime:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Landroid/newbeesystem/ProcessInfo;->pid:I

    return v0
.end method

.method public getpTips()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Landroid/newbeesystem/ProcessInfo;->pTips:I

    return v0
.end method

.method public getpType()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Landroid/newbeesystem/ProcessInfo;->pType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/newbeesystem/ProcessInfo;->pid:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/newbeesystem/ProcessInfo;->packageName:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/newbeesystem/ProcessInfo;->cpuRatio:F

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/newbeesystem/ProcessInfo;->MemorySize:F

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/newbeesystem/ProcessInfo;->processStartTime:J

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/newbeesystem/ProcessInfo;->cpuTime:J

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/newbeesystem/ProcessInfo;->pType:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/newbeesystem/ProcessInfo;->pTips:I

    .line 143
    return-void
.end method

.method public setCpuRatio(F)V
    .locals 0
    .parameter "cpuRatio"

    .prologue
    .line 97
    iput p1, p0, Landroid/newbeesystem/ProcessInfo;->cpuRatio:F

    .line 98
    return-void
.end method

.method public setCpuTime(J)V
    .locals 0
    .parameter "cpuTime"

    .prologue
    .line 65
    iput-wide p1, p0, Landroid/newbeesystem/ProcessInfo;->cpuTime:J

    .line 66
    return-void
.end method

.method public setMemorySize(F)V
    .locals 0
    .parameter "memorySize"

    .prologue
    .line 105
    iput p1, p0, Landroid/newbeesystem/ProcessInfo;->MemorySize:F

    .line 106
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 89
    iput-object p1, p0, Landroid/newbeesystem/ProcessInfo;->packageName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .parameter "pid"

    .prologue
    .line 40
    iput p1, p0, Landroid/newbeesystem/ProcessInfo;->pid:I

    .line 41
    return-void
.end method

.method public setProcessStartTime(J)V
    .locals 0
    .parameter "processStartTime"

    .prologue
    .line 57
    iput-wide p1, p0, Landroid/newbeesystem/ProcessInfo;->processStartTime:J

    .line 58
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .parameter "pid"

    .prologue
    .line 48
    iput p1, p0, Landroid/newbeesystem/ProcessInfo;->pid:I

    .line 49
    return-void
.end method

.method public setpTips(I)V
    .locals 0
    .parameter "pTips"

    .prologue
    .line 81
    iput p1, p0, Landroid/newbeesystem/ProcessInfo;->pTips:I

    .line 82
    return-void
.end method

.method public setpType(I)V
    .locals 0
    .parameter "pType"

    .prologue
    .line 73
    iput p1, p0, Landroid/newbeesystem/ProcessInfo;->pType:I

    .line 74
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 123
    iget v0, p0, Landroid/newbeesystem/ProcessInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Landroid/newbeesystem/ProcessInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget v0, p0, Landroid/newbeesystem/ProcessInfo;->cpuRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 126
    iget v0, p0, Landroid/newbeesystem/ProcessInfo;->MemorySize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 127
    iget-wide v0, p0, Landroid/newbeesystem/ProcessInfo;->processStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-wide v0, p0, Landroid/newbeesystem/ProcessInfo;->cpuTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    iget v0, p0, Landroid/newbeesystem/ProcessInfo;->pType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Landroid/newbeesystem/ProcessInfo;->pTips:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return-void
.end method
