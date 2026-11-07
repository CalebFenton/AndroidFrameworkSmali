.class public final synthetic Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/NetworkCapabilities$Builder;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/NetworkCapabilities$Builder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda12;->f$0:Landroid/net/NetworkCapabilities$Builder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda12;->f$0:Landroid/net/NetworkCapabilities$Builder;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    return-void
.end method
