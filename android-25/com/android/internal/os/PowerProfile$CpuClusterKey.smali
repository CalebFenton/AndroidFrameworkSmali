.class public Lcom/android/internal/os/PowerProfile$CpuClusterKey;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/PowerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CpuClusterKey"
.end annotation


# instance fields
.field private final numCpus:I

.field private final powerKey:Ljava/lang/String;

.field private final timeKey:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->powerKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->timeKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "timeKey"    # Ljava/lang/String;
    .param p2, "powerKey"    # Ljava/lang/String;
    .param p3, "numCpus"    # I

    #@0
    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 338
    iput-object p1, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->timeKey:Ljava/lang/String;

    #@5
    .line 339
    iput-object p2, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->powerKey:Ljava/lang/String;

    #@7
    .line 340
    iput p3, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    #@9
    .line 337
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$CpuClusterKey;)V
    .locals 0
    .param p1, "timeKey"    # Ljava/lang/String;
    .param p2, "powerKey"    # Ljava/lang/String;
    .param p3, "numCpus"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@3
    return-void
.end method
