.class public final synthetic Landroid/speech/RecognitionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/speech/RecognitionService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/speech/RecognitionService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/RecognitionService$$ExternalSyntheticLambda0;->f$0:Landroid/speech/RecognitionService;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/speech/RecognitionService$$ExternalSyntheticLambda0;->f$0:Landroid/speech/RecognitionService;

    check-cast p1, Landroid/content/AttributionSource;

    invoke-static {v0, p1}, Landroid/speech/RecognitionService;->$r8$lambda$pi72R5se-QW6gl4Z1BYAcvnKibs(Landroid/speech/RecognitionService;Landroid/content/AttributionSource;)V

    return-void
.end method
