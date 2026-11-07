.class public Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus$NativeNotLoadedException;
.super Ljava/lang/RuntimeException;
.source "NativeLibraryLoadedStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeNotLoadedException"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method
