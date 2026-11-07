.class public Landroid/provider/internal/aconfig/storage/android/util/proto/WireTypeMismatchException;
.super Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;
.source "WireTypeMismatchException.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method
