.class Landroid/speech/RecognitionService$SessionState;
.super Ljava/lang/Object;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionState"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/speech/RecognitionService$Callback;

.field private blacklist mStartedDataDelivery:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/speech/RecognitionService$SessionState;)Landroid/speech/RecognitionService$Callback;
    .registers 1

    iget-object p0, p0, Landroid/speech/RecognitionService$SessionState;->mCallback:Landroid/speech/RecognitionService$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartedDataDelivery(Landroid/speech/RecognitionService$SessionState;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/speech/RecognitionService$SessionState;->mStartedDataDelivery:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStartedDataDelivery(Landroid/speech/RecognitionService$SessionState;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/speech/RecognitionService$SessionState;->mStartedDataDelivery:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/speech/RecognitionService$Callback;)V
    .registers 3
    .param p1, "currentCallback"    # Landroid/speech/RecognitionService$Callback;

    .line 905
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/speech/RecognitionService$SessionState;-><init>(Landroid/speech/RecognitionService$Callback;Z)V

    .line 906
    return-void
.end method

.method constructor blacklist <init>(Landroid/speech/RecognitionService$Callback;Z)V
    .registers 3
    .param p1, "callback"    # Landroid/speech/RecognitionService$Callback;
    .param p2, "startedDataDelivery"    # Z

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    iput-object p1, p0, Landroid/speech/RecognitionService$SessionState;->mCallback:Landroid/speech/RecognitionService$Callback;

    .line 901
    iput-boolean p2, p0, Landroid/speech/RecognitionService$SessionState;->mStartedDataDelivery:Z

    .line 902
    return-void
.end method


# virtual methods
.method blacklist reset()V
    .registers 2

    .line 909
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/RecognitionService$SessionState;->mCallback:Landroid/speech/RecognitionService$Callback;

    .line 910
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/RecognitionService$SessionState;->mStartedDataDelivery:Z

    .line 911
    return-void
.end method
