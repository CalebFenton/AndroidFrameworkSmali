.class public final synthetic Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/telephony/SubscriptionManager$CallISubMethodHelper;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda19;->f$0:Ljava/lang/String;

    iput p2, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda19;->f$1:I

    return-void
.end method


# virtual methods
.method public final blacklist callMethod(Lcom/android/internal/telephony/ISub;)I
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda19;->f$0:Ljava/lang/String;

    iget v1, p0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda19;->f$1:I

    invoke-static {v0, v1, p1}, Landroid/telephony/SubscriptionManager;->lambda$setDisplayNumber$5(Ljava/lang/String;ILcom/android/internal/telephony/ISub;)I

    move-result p1

    return p1
.end method
