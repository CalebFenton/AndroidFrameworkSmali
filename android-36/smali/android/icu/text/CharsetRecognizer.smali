.class abstract Landroid/icu/text/CharsetRecognizer;
.super Ljava/lang/Object;
.source "CharsetRecognizer.java"


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o getLanguage()Ljava/lang/String;
    .registers 2

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract greylist-max-o getName()Ljava/lang/String;
.end method

.method abstract greylist-max-o match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
.end method
