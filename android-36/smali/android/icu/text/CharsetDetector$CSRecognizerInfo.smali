.class Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
.super Ljava/lang/Object;
.source "CharsetDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSRecognizerInfo"
.end annotation


# instance fields
.field greylist-max-o isDefaultEnabled:Z

.field greylist-max-o recognizer:Landroid/icu/text/CharsetRecognizer;


# direct methods
.method constructor greylist-max-o <init>(Landroid/icu/text/CharsetRecognizer;Z)V
    .registers 3
    .param p1, "recognizer"    # Landroid/icu/text/CharsetRecognizer;
    .param p2, "isDefaultEnabled"    # Z

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p1, p0, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    .line 447
    iput-boolean p2, p0, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    .line 448
    return-void
.end method
