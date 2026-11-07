.class public final synthetic Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/ims/ImsResolver;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsResolver;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iput p2, p0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/ims/ImsResolver;

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->$r8$lambda$RRUGlzwynuEWnwvN3vLDgXdQojM(Lcom/android/internal/telephony/ims/ImsResolver;ILcom/android/internal/telephony/ims/ImsServiceController;)V

    return-void
.end method
