.class abstract Landroid/speech/RecognitionPart$BaseBuilder;
.super Ljava/lang/Object;
.source "RecognitionPart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseBuilder"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setFormattedText(Ljava/lang/String;)Landroid/speech/RecognitionPart$Builder;
    .registers 7
    .param p1, "value"    # Ljava/lang/String;

    .line 126
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 128
    move-object v0, p0

    check-cast v0, Landroid/speech/RecognitionPart$Builder;

    .line 129
    .local v0, "builder":Landroid/speech/RecognitionPart$Builder;
    invoke-static {v0}, Landroid/speech/RecognitionPart$Builder;->-$$Nest$mcheckNotUsed(Landroid/speech/RecognitionPart$Builder;)V

    .line 130
    invoke-static {v0}, Landroid/speech/RecognitionPart$Builder;->-$$Nest$fgetmBuilderFieldsSet(Landroid/speech/RecognitionPart$Builder;)J

    move-result-wide v1

    const-wide/16 v3, 0x2

    or-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/speech/RecognitionPart$Builder;->-$$Nest$fputmBuilderFieldsSet(Landroid/speech/RecognitionPart$Builder;J)V

    .line 131
    invoke-static {v0, p1}, Landroid/speech/RecognitionPart$Builder;->-$$Nest$fputmFormattedText(Landroid/speech/RecognitionPart$Builder;Ljava/lang/String;)V

    .line 132
    return-object v0
.end method
