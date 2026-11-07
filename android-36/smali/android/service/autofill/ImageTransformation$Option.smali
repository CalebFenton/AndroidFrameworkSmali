.class final Landroid/service/autofill/ImageTransformation$Option;
.super Ljava/lang/Object;
.source "ImageTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/ImageTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Option"
.end annotation


# instance fields
.field public final greylist-max-o contentDescription:Ljava/lang/CharSequence;

.field public final greylist-max-o pattern:Ljava/util/regex/Pattern;

.field public final greylist-max-o resId:I


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "resId"    # I
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Landroid/service/autofill/ImageTransformation$Option;->pattern:Ljava/util/regex/Pattern;

    .line 288
    iput p2, p0, Landroid/service/autofill/ImageTransformation$Option;->resId:I

    .line 289
    invoke-static {p3}, Landroid/text/TextUtils;->trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/ImageTransformation$Option;->contentDescription:Ljava/lang/CharSequence;

    .line 290
    return-void
.end method
