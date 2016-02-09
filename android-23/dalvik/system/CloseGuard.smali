.class public final Ldalvik/system/CloseGuard;
.super Ljava/lang/Object;
.source "CloseGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/CloseGuard$Reporter;,
        Ldalvik/system/CloseGuard$DefaultReporter;
    }
.end annotation


# static fields
.field private static volatile ENABLED:Z

.field private static final NOOP:Ldalvik/system/CloseGuard;

.field private static volatile REPORTER:Ldalvik/system/CloseGuard$Reporter;


# instance fields
.field private allocationSite:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 106
    new-instance v0, Ldalvik/system/CloseGuard;

    #@2
    invoke-direct {v0}, Ldalvik/system/CloseGuard;-><init>()V

    #@5
    sput-object v0, Ldalvik/system/CloseGuard;->NOOP:Ldalvik/system/CloseGuard;

    #@7
    .line 113
    const/4 v0, 0x1

    #@8
    sput-boolean v0, Ldalvik/system/CloseGuard;->ENABLED:Z

    #@a
    .line 118
    new-instance v0, Ldalvik/system/CloseGuard$DefaultReporter;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-direct {v0, v1}, Ldalvik/system/CloseGuard$DefaultReporter;-><init>(Ldalvik/system/CloseGuard$DefaultReporter;)V

    #@10
    sput-object v0, Ldalvik/system/CloseGuard;->REPORTER:Ldalvik/system/CloseGuard$Reporter;

    #@12
    .line 101
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static get()Ldalvik/system/CloseGuard;
    .locals 1

    #@0
    .prologue
    .line 127
    sget-boolean v0, Ldalvik/system/CloseGuard;->ENABLED:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 128
    sget-object v0, Ldalvik/system/CloseGuard;->NOOP:Ldalvik/system/CloseGuard;

    #@6
    return-object v0

    #@7
    .line 130
    :cond_0
    new-instance v0, Ldalvik/system/CloseGuard;

    #@9
    invoke-direct {v0}, Ldalvik/system/CloseGuard;-><init>()V

    #@c
    return-object v0
.end method

.method public static getReporter()Ldalvik/system/CloseGuard$Reporter;
    .locals 1

    #@0
    .prologue
    .line 156
    sget-object v0, Ldalvik/system/CloseGuard;->REPORTER:Ldalvik/system/CloseGuard$Reporter;

    #@2
    return-object v0
.end method

.method public static setEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    #@0
    .prologue
    .line 138
    sput-boolean p0, Ldalvik/system/CloseGuard;->ENABLED:Z

    #@2
    .line 137
    return-void
.end method

.method public static setReporter(Ldalvik/system/CloseGuard$Reporter;)V
    .locals 2
    .param p0, "reporter"    # Ldalvik/system/CloseGuard$Reporter;

    #@0
    .prologue
    .line 146
    if-nez p0, :cond_0

    #@2
    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "reporter == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 149
    :cond_0
    sput-object p0, Ldalvik/system/CloseGuard;->REPORTER:Ldalvik/system/CloseGuard$Reporter;

    #@d
    .line 145
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 190
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ldalvik/system/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    #@3
    .line 189
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 3
    .param p1, "closer"    # Ljava/lang/String;

    #@0
    .prologue
    .line 172
    if-nez p1, :cond_0

    #@2
    .line 173
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "closer == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 176
    :cond_0
    sget-object v1, Ldalvik/system/CloseGuard;->NOOP:Ldalvik/system/CloseGuard;

    #@d
    if-eq p0, v1, :cond_1

    #@f
    sget-boolean v1, Ldalvik/system/CloseGuard;->ENABLED:Z

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Explicit termination method \'"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string/jumbo v2, "\' not called"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    .line 180
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/Throwable;

    #@30
    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    #@33
    iput-object v1, p0, Ldalvik/system/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    #@35
    .line 170
    return-void

    #@36
    .line 177
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public warnIfOpen()V
    .locals 3

    #@0
    .prologue
    .line 200
    iget-object v1, p0, Ldalvik/system/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    #@2
    if-eqz v1, :cond_0

    #@4
    sget-boolean v1, Ldalvik/system/CloseGuard;->ENABLED:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 205
    const-string/jumbo v0, "A resource was acquired at attached stack trace but never released. See java.io.Closeable for information on avoiding resource leaks."

    #@b
    .line 208
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Ldalvik/system/CloseGuard;->REPORTER:Ldalvik/system/CloseGuard$Reporter;

    #@d
    iget-object v2, p0, Ldalvik/system/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    #@f
    invoke-interface {v1, v0, v2}, Ldalvik/system/CloseGuard$Reporter;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    .line 199
    return-void

    #@13
    .line 201
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method
