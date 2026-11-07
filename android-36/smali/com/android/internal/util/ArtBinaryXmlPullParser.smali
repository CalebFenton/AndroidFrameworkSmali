.class public Lcom/android/internal/util/ArtBinaryXmlPullParser;
.super Lcom/android/modules/utils/BinaryXmlPullParser;
.source "ArtBinaryXmlPullParser.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist obtainFastDataInput(Ljava/io/InputStream;)Lcom/android/modules/utils/FastDataInput;
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;

    .line 37
    invoke-static {p1}, Lcom/android/internal/util/ArtFastDataInput;->obtain(Ljava/io/InputStream;)Lcom/android/internal/util/ArtFastDataInput;

    move-result-object v0

    return-object v0
.end method
