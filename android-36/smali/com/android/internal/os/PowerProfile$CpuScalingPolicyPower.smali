.class Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/PowerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CpuScalingPolicyPower"
.end annotation


# instance fields
.field public final blacklist policyPower:D

.field public blacklist powerBrackets:[I

.field public final blacklist stepPower:[D


# direct methods
.method private constructor blacklist <init>(D[D)V
    .registers 4
    .param p1, "policyPower"    # D
    .param p3, "stepPower"    # [D

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    iput-wide p1, p0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->policyPower:D

    .line 656
    iput-object p3, p0, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;->stepPower:[D

    .line 657
    return-void
.end method

.method synthetic constructor blacklist <init>(D[DLcom/android/internal/os/PowerProfile-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/PowerProfile$CpuScalingPolicyPower;-><init>(D[D)V

    return-void
.end method
