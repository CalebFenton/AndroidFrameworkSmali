.class public final Landroid/telephony/ims/PublishAttributes$Builder;
.super Ljava/lang/Object;
.source "PublishAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/PublishAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttributes:Landroid/telephony/ims/PublishAttributes;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "publishState"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/telephony/ims/PublishAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/ims/PublishAttributes;-><init>(ILandroid/telephony/ims/PublishAttributes-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/PublishAttributes$Builder;->mAttributes:Landroid/telephony/ims/PublishAttributes;

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/ims/PublishAttributes;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/telephony/ims/PublishAttributes$Builder;->mAttributes:Landroid/telephony/ims/PublishAttributes;

    return-object v0
.end method

.method public blacklist setPresenceTuples(Ljava/util/List;)Landroid/telephony/ims/PublishAttributes$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;)",
            "Landroid/telephony/ims/PublishAttributes$Builder;"
        }
    .end annotation

    .line 77
    .local p1, "tuples":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactPresenceTuple;>;"
    iget-object v0, p0, Landroid/telephony/ims/PublishAttributes$Builder;->mAttributes:Landroid/telephony/ims/PublishAttributes;

    invoke-static {v0, p1}, Landroid/telephony/ims/PublishAttributes;->-$$Nest$fputmPresenceTuples(Landroid/telephony/ims/PublishAttributes;Ljava/util/List;)V

    .line 78
    return-object p0
.end method

.method public blacklist setSipDetails(Landroid/telephony/ims/SipDetails;)Landroid/telephony/ims/PublishAttributes$Builder;
    .registers 3
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    .line 65
    iget-object v0, p0, Landroid/telephony/ims/PublishAttributes$Builder;->mAttributes:Landroid/telephony/ims/PublishAttributes;

    invoke-static {v0, p1}, Landroid/telephony/ims/PublishAttributes;->-$$Nest$fputmSipDetails(Landroid/telephony/ims/PublishAttributes;Landroid/telephony/ims/SipDetails;)V

    .line 66
    return-object p0
.end method
