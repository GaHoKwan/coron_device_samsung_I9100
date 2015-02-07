.class public Landroid/qrom/powersave/AbnormalTips;
.super Ljava/lang/Object;
.source "AbnormalTips.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/qrom/powersave/AbnormalTips;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIPS_TYPE_ALARM_POWER:I = 0x4

.field public static final TIPS_TYPE_CPU:I = 0x2

.field public static final TIPS_TYPE_MEMORY:I = 0x1

.field public static final TIPS_TYPE_POWER:I = 0x3

.field public static final TIPS_TYPE_WAKELOCK_POWER:I = 0x5


# instance fields
.field private abnormalAppName:Ljava/lang/String;

.field private abnormalCount:I

.field private cpuRatio:F

.field private memorySize:F

.field private pTip:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Landroid/qrom/powersave/AbnormalTips$1;

    invoke-direct {v0}, Landroid/qrom/powersave/AbnormalTips$1;-><init>()V

    sput-object v0, Landroid/qrom/powersave/AbnormalTips;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Landroid/qrom/powersave/AbnormalTips;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getAbnormalAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Landroid/qrom/powersave/AbnormalTips;->abnormalAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getAbnormalCount()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Landroid/qrom/powersave/AbnormalTips;->abnormalCount:I

    return v0
.end method

.method public getCpuRatio()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Landroid/qrom/powersave/AbnormalTips;->cpuRatio:F

    return v0
.end method

.method public getMemorySize()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Landroid/qrom/powersave/AbnormalTips;->memorySize:F

    return v0
.end method

.method public getpTip()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Landroid/qrom/powersave/AbnormalTips;->pTip:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/qrom/powersave/AbnormalTips;->abnormalAppName:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/qrom/powersave/AbnormalTips;->abnormalCount:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/qrom/powersave/AbnormalTips;->pTip:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/qrom/powersave/AbnormalTips;->cpuRatio:F

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/qrom/powersave/AbnormalTips;->memorySize:F

    .line 100
    return-void
.end method

.method public setAbnormalAppName(Ljava/lang/String;)V
    .locals 0
    .parameter "abnormalAppName"

    .prologue
    .line 37
    iput-object p1, p0, Landroid/qrom/powersave/AbnormalTips;->abnormalAppName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setAbnormalCount(I)V
    .locals 0
    .parameter "abnormalCount"

    .prologue
    .line 45
    iput p1, p0, Landroid/qrom/powersave/AbnormalTips;->abnormalCount:I

    .line 46
    return-void
.end method

.method public setCpuRatio(F)V
    .locals 0
    .parameter "cpuRatio"

    .prologue
    .line 61
    iput p1, p0, Landroid/qrom/powersave/AbnormalTips;->cpuRatio:F

    .line 62
    return-void
.end method

.method public setMemorySize(F)V
    .locals 0
    .parameter "memorySize"

    .prologue
    .line 69
    iput p1, p0, Landroid/qrom/powersave/AbnormalTips;->memorySize:F

    .line 70
    return-void
.end method

.method public setpTip(I)V
    .locals 0
    .parameter "pTip"

    .prologue
    .line 53
    iput p1, p0, Landroid/qrom/powersave/AbnormalTips;->pTip:I

    .line 54
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 86
    iget-object v0, p0, Landroid/qrom/powersave/AbnormalTips;->abnormalAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Landroid/qrom/powersave/AbnormalTips;->abnormalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Landroid/qrom/powersave/AbnormalTips;->pTip:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Landroid/qrom/powersave/AbnormalTips;->cpuRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 90
    iget v0, p0, Landroid/qrom/powersave/AbnormalTips;->memorySize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 91
    return-void
.end method
