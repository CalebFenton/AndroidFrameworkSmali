.class public Landroid/telephony/PersistentLogger;
.super Ljava/lang/Object;
.source "PersistentLogger.java"


# instance fields
.field private final blacklist mPersistentLoggerBackend:Landroid/telephony/PersistentLoggerBackend;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/PersistentLoggerBackend;)V
    .registers 2
    .param p1, "persistentLoggerBackend"    # Landroid/telephony/PersistentLoggerBackend;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/telephony/PersistentLogger;->mPersistentLoggerBackend:Landroid/telephony/PersistentLoggerBackend;

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Landroid/telephony/PersistentLogger;->mPersistentLoggerBackend:Landroid/telephony/PersistentLoggerBackend;

    invoke-interface {v0, p1, p2}, Landroid/telephony/PersistentLoggerBackend;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public blacklist error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 77
    iget-object v0, p0, Landroid/telephony/PersistentLogger;->mPersistentLoggerBackend:Landroid/telephony/PersistentLoggerBackend;

    invoke-interface {v0, p1, p2}, Landroid/telephony/PersistentLoggerBackend;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public blacklist error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 87
    iget-object v0, p0, Landroid/telephony/PersistentLogger;->mPersistentLoggerBackend:Landroid/telephony/PersistentLoggerBackend;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/PersistentLoggerBackend;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public blacklist info(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 49
    iget-object v0, p0, Landroid/telephony/PersistentLogger;->mPersistentLoggerBackend:Landroid/telephony/PersistentLoggerBackend;

    invoke-interface {v0, p1, p2}, Landroid/telephony/PersistentLoggerBackend;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public blacklist warn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 58
    iget-object v0, p0, Landroid/telephony/PersistentLogger;->mPersistentLoggerBackend:Landroid/telephony/PersistentLoggerBackend;

    invoke-interface {v0, p1, p2}, Landroid/telephony/PersistentLoggerBackend;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public blacklist warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 68
    iget-object v0, p0, Landroid/telephony/PersistentLogger;->mPersistentLoggerBackend:Landroid/telephony/PersistentLoggerBackend;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/PersistentLoggerBackend;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method
