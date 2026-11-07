.class public final Landroid/net/NetworkPolicyManager$UidState;
.super Ljava/lang/Object;
.source "NetworkPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UidState"
.end annotation


# instance fields
.field public blacklist capability:I

.field public blacklist procState:I

.field public blacklist procStateSeq:J

.field public blacklist uid:I


# direct methods
.method public constructor blacklist <init>(IIJI)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    iput p1, p0, Landroid/net/NetworkPolicyManager$UidState;->uid:I

    .line 898
    iput p2, p0, Landroid/net/NetworkPolicyManager$UidState;->procState:I

    .line 899
    iput-wide p3, p0, Landroid/net/NetworkPolicyManager$UidState;->procStateSeq:J

    .line 900
    iput p5, p0, Landroid/net/NetworkPolicyManager$UidState;->capability:I

    .line 901
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 906
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{procState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    iget v1, p0, Landroid/net/NetworkPolicyManager$UidState;->procState:I

    invoke-static {v1}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    const-string v1, ",seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    iget-wide v1, p0, Landroid/net/NetworkPolicyManager$UidState;->procStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 910
    const-string v1, ",cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    iget v1, p0, Landroid/net/NetworkPolicyManager$UidState;->capability:I

    invoke-static {v0, v1}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/lang/StringBuilder;I)V

    .line 912
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
