.class public Landroid/icu/util/TimeZoneTransition;
.super Ljava/lang/Object;
.source "TimeZoneTransition.java"


# instance fields
.field private final from:Landroid/icu/util/TimeZoneRule;

.field private final time:J

.field private final to:Landroid/icu/util/TimeZoneRule;


# direct methods
.method public constructor <init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "from"    # Landroid/icu/util/TimeZoneRule;
    .param p4, "to"    # Landroid/icu/util/TimeZoneRule;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput-wide p1, p0, Landroid/icu/util/TimeZoneTransition;->time:J

    #@5
    .line 32
    iput-object p3, p0, Landroid/icu/util/TimeZoneTransition;->from:Landroid/icu/util/TimeZoneRule;

    #@7
    .line 33
    iput-object p4, p0, Landroid/icu/util/TimeZoneTransition;->to:Landroid/icu/util/TimeZoneRule;

    #@9
    .line 30
    return-void
.end method


# virtual methods
.method public getFrom()Landroid/icu/util/TimeZoneRule;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/icu/util/TimeZoneTransition;->from:Landroid/icu/util/TimeZoneRule;

    #@2
    return-object v0
.end method

.method public getTime()J
    .locals 2

    #@0
    .prologue
    .line 44
    iget-wide v0, p0, Landroid/icu/util/TimeZoneTransition;->time:J

    #@2
    return-wide v0
.end method

.method public getTo()Landroid/icu/util/TimeZoneRule;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Landroid/icu/util/TimeZoneTransition;->to:Landroid/icu/util/TimeZoneRule;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 78
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "time="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-wide v2, p0, Landroid/icu/util/TimeZoneTransition;->time:J

    #@e
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@11
    .line 79
    const-string/jumbo v1, ", from={"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Landroid/icu/util/TimeZoneTransition;->from:Landroid/icu/util/TimeZoneRule;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, "}"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 80
    const-string/jumbo v1, ", to={"

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, p0, Landroid/icu/util/TimeZoneTransition;->to:Landroid/icu/util/TimeZoneRule;

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, "}"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    return-object v1
.end method
