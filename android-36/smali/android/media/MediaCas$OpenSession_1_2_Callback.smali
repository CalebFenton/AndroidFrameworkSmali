.class Landroid/media/MediaCas$OpenSession_1_2_Callback;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Landroid/hardware/cas/V1_2/ICas$openSession_1_2Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenSession_1_2_Callback"
.end annotation


# instance fields
.field public blacklist mSession:Landroid/media/MediaCas$Session;

.field public blacklist mStatus:I

.field final synthetic blacklist this$0:Landroid/media/MediaCas;


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaCas;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1170
    iput-object p1, p0, Landroid/media/MediaCas$OpenSession_1_2_Callback;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaCas;Landroid/media/MediaCas-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaCas$OpenSession_1_2_Callback;-><init>(Landroid/media/MediaCas;)V

    return-void
.end method


# virtual methods
.method public blacklist onValues(ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1178
    .local p2, "sessionId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iput p1, p0, Landroid/media/MediaCas$OpenSession_1_2_Callback;->mStatus:I

    .line 1179
    iget-object v0, p0, Landroid/media/MediaCas$OpenSession_1_2_Callback;->this$0:Landroid/media/MediaCas;

    iget-object v1, p0, Landroid/media/MediaCas$OpenSession_1_2_Callback;->this$0:Landroid/media/MediaCas;

    invoke-static {v1, p2}, Landroid/media/MediaCas;->-$$Nest$mtoBytes(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaCas;->createFromSessionId([B)Landroid/media/MediaCas$Session;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCas$OpenSession_1_2_Callback;->mSession:Landroid/media/MediaCas$Session;

    .line 1180
    return-void
.end method
