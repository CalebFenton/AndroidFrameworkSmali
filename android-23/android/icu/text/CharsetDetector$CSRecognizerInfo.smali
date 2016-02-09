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
.field isDefaultEnabled:Z

.field recognizer:Landroid/icu/text/CharsetRecognizer;


# direct methods
.method constructor <init>(Landroid/icu/text/CharsetRecognizer;Z)V
    .locals 0
    .param p1, "recognizer"    # Landroid/icu/text/CharsetRecognizer;
    .param p2, "isDefaultEnabled"    # Z

    #@0
    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 465
    iput-object p1, p0, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    #@5
    .line 466
    iput-boolean p2, p0, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    #@7
    .line 464
    return-void
.end method
