.class public final synthetic Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/telephony/SubscriptionManager$CallISubMethodHelper;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;->f$0:Ljava/lang/String;

    iput p2, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;->f$1:I

    iput p3, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;->f$2:I

    return-void
.end method


# virtual methods
.method public final blacklist callMethod(Lcom/android/internal/telephony/ISub;)I
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;->f$0:Ljava/lang/String;

    iget v1, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;->f$1:I

    iget v2, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;->f$2:I

    invoke-static {v0, v1, v2, p1}, Landroid/telephony/SubscriptionManager;->lambda$setDisplayName$4(Ljava/lang/String;IILcom/android/internal/telephony/ISub;)I

    move-result p1

    return p1
.end method
