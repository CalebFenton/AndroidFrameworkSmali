.class public Landroid/icu/impl/TimeZoneAdapter;
.super Ljava/util/TimeZone;
.source "TimeZoneAdapter.java"


# static fields
.field static final serialVersionUID:J = -0x1c4fcadfcee9017dL


# instance fields
.field private zone:Landroid/icu/util/TimeZone;


# direct methods
.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    #@3
    .line 60
    iput-object p1, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    #@5
    .line 61
    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-super {p0, v0}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    #@c
    .line 59
    return-void
.end method

.method public static wrap(Landroid/icu/util/TimeZone;)Ljava/util/TimeZone;
    .locals 1
    .param p0, "tz"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 46
    new-instance v0, Landroid/icu/impl/TimeZoneAdapter;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/TimeZoneAdapter;-><init>(Landroid/icu/util/TimeZone;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 120
    new-instance v1, Landroid/icu/impl/TimeZoneAdapter;

    #@2
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    #@4
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/icu/util/TimeZone;

    #@a
    invoke-direct {v1, v0}, Landroid/icu/impl/TimeZoneAdapter;-><init>(Landroid/icu/util/TimeZone;)V

    #@d
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 134
    instance-of v0, p1, Landroid/icu/impl/TimeZoneAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 135
    check-cast p1, Landroid/icu/impl/TimeZoneAdapter;

    #@6
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object p1, p1, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    #@8
    .line 137
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    #@a
    invoke-virtual {v0, p1}, Landroid/icu/util/TimeZone;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getOffset(IIIIII)I
    .locals 7
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/TimeZone;->getOffset(IIIIII)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getRawOffset()I
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 2
    .param p1, "other"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 76
    instance-of v0, p1, Landroid/icu/impl/TimeZoneAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 77
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    #@6
    check-cast p1, Landroid/icu/impl/TimeZoneAdapter;

    #@8
    .end local p1    # "other":Ljava/util/TimeZone;
    iget-object v1, p1, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    #@a
    invoke-virtual {v0, v1}, Landroid/icu/util/TimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    #@d
    move-result v0

    #@e
    .line 76
    :goto_0
    return v0

    #@f
    .restart local p1    # "other":Ljava/util/TimeZone;
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    #@3
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    invoke-super {p0, p1}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    #@3
    .line 69
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    #@5
    invoke-virtual {v0, p1}, Landroid/icu/util/TimeZone;->setID(Ljava/lang/String;)V

    #@8
    .line 67
    return-void
.end method

.method public setRawOffset(I)V
    .locals 1
    .param p1, "offsetMillis"    # I

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/util/TimeZone;->setRawOffset(I)V

    #@5
    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "TimeZoneAdapter: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    #@e
    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public unwrap()Landroid/icu/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    #@2
    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/icu/impl/TimeZoneAdapter;->zone:Landroid/icu/util/TimeZone;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    #@5
    move-result v0

    #@6
    return v0
.end method
