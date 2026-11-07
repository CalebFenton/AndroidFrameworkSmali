.class Ljava/io/FileInputStream$UseManualSkipException;
.super Ljava/lang/Exception;
.source "FileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/FileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UseManualSkipException"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 495
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
