.class public Lcom/android/internal/net/eap/EapResult$EapError;
.super Lcom/android/internal/net/eap/EapResult;
.source "EapResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/EapResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapError"
.end annotation


# instance fields
.field public final blacklist cause:Ljava/lang/Exception;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Exception;

    .line 182
    invoke-direct {p0}, Lcom/android/internal/net/eap/EapResult;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/android/internal/net/eap/EapResult$EapError;->cause:Ljava/lang/Exception;

    .line 184
    return-void
.end method
