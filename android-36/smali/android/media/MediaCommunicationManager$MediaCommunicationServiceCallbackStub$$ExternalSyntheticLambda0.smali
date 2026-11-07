.class public final synthetic Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaCommunicationManager$SessionCallbackRecord;

.field public final synthetic blacklist f$1:Landroid/media/Session2Token;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaCommunicationManager$SessionCallbackRecord;Landroid/media/Session2Token;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaCommunicationManager$SessionCallbackRecord;

    iput-object p2, p0, Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/Session2Token;

    iput p3, p0, Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaCommunicationManager$SessionCallbackRecord;

    iget-object v1, p0, Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/Session2Token;

    iget p0, p0, Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Landroid/media/MediaCommunicationManager$MediaCommunicationServiceCallbackStub;->$r8$lambda$eqnUBIXbOB1FB-Nt4WrFV7-tXNY(Landroid/media/MediaCommunicationManager$SessionCallbackRecord;Landroid/media/Session2Token;I)V

    return-void
.end method
