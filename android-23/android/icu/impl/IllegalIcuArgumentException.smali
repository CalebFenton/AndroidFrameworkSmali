.class public Landroid/icu/impl/IllegalIcuArgumentException;
.super Ljava/lang/IllegalArgumentException;
.source "IllegalIcuArgumentException.java"


# static fields
.field private static final serialVersionUID:J = 0x3496294bfd718099L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 20
    return-void
.end method


# virtual methods
.method public declared-synchronized initCause(Ljava/lang/Throwable;)Landroid/icu/impl/IllegalIcuArgumentException;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 29
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/icu/impl/IllegalIcuArgumentException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public bridge synthetic initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 28
    invoke-virtual {p0, p1}, Landroid/icu/impl/IllegalIcuArgumentException;->initCause(Ljava/lang/Throwable;)Landroid/icu/impl/IllegalIcuArgumentException;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
