.class Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;
.super Ljava/lang/Object;
.source "LipDiffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filterpacks/facedetect/LipDiffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameSize"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Lcom/google/android/filterpacks/facedetect/LipDiffer;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/google/android/filterpacks/facedetect/LipDiffer;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/filterpacks/facedetect/LipDiffer;
    .param p2, "w"    # I
    .param p3, "h"    # I

    #@0
    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->this$0:Lcom/google/android/filterpacks/facedetect/LipDiffer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput p2, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->width:I

    #@7
    iput p3, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->height:I

    #@9
    return-void
.end method


# virtual methods
.method public area()F
    .locals 2

    #@0
    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->width:I

    #@2
    iget v1, p0, Lcom/google/android/filterpacks/facedetect/LipDiffer$FrameSize;->height:I

    #@4
    mul-int/2addr v0, v1

    #@5
    int-to-float v0, v0

    #@6
    return v0
.end method
