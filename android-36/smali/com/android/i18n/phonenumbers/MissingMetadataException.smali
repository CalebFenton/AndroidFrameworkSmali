.class public final Lcom/android/i18n/phonenumbers/MissingMetadataException;
.super Ljava/lang/IllegalStateException;
.source "MissingMetadataException.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method
