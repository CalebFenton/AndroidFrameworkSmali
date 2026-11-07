.class final Landroid/app/compat/ChangeIdStateQuery;
.super Ljava/lang/Object;
.source "ChangeIdStateQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/compat/ChangeIdStateQuery$QueryType;
    }
.end annotation


# static fields
.field static final blacklist QUERY_BY_PACKAGE_NAME:I = 0x0

.field static final blacklist QUERY_BY_UID:I = 0x1


# instance fields
.field public blacklist changeId:J

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist type:I

.field public blacklist uid:I

.field public blacklist userId:I


# direct methods
.method private constructor blacklist <init>(IJLjava/lang/String;II)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "changeId"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "userId"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/app/compat/ChangeIdStateQuery;->type:I

    .line 56
    iput-wide p2, p0, Landroid/app/compat/ChangeIdStateQuery;->changeId:J

    .line 57
    iput-object p4, p0, Landroid/app/compat/ChangeIdStateQuery;->packageName:Ljava/lang/String;

    .line 58
    iput p5, p0, Landroid/app/compat/ChangeIdStateQuery;->uid:I

    .line 59
    iput p6, p0, Landroid/app/compat/ChangeIdStateQuery;->userId:I

    .line 60
    return-void
.end method

.method static blacklist byPackageName(JLjava/lang/String;I)Landroid/app/compat/ChangeIdStateQuery;
    .registers 11
    .param p0, "changeId"    # J
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 64
    new-instance v0, Landroid/app/compat/ChangeIdStateQuery;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    .end local p0    # "changeId":J
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "userId":I
    .local v2, "changeId":J
    .local v4, "packageName":Ljava/lang/String;
    .local v6, "userId":I
    invoke-direct/range {v0 .. v6}, Landroid/app/compat/ChangeIdStateQuery;-><init>(IJLjava/lang/String;II)V

    return-object v0
.end method

.method static blacklist byUid(JI)Landroid/app/compat/ChangeIdStateQuery;
    .registers 10
    .param p0, "changeId"    # J
    .param p2, "uid"    # I

    .line 68
    new-instance v0, Landroid/app/compat/ChangeIdStateQuery;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    move-wide v2, p0

    move v5, p2

    .end local p0    # "changeId":J
    .end local p2    # "uid":I
    .local v2, "changeId":J
    .local v5, "uid":I
    invoke-direct/range {v0 .. v6}, Landroid/app/compat/ChangeIdStateQuery;-><init>(IJLjava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 73
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 74
    return v0

    .line 76
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    instance-of v2, p1, Landroid/app/compat/ChangeIdStateQuery;

    if-nez v2, :cond_c

    goto :goto_36

    .line 79
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/app/compat/ChangeIdStateQuery;

    .line 80
    .local v2, "that":Landroid/app/compat/ChangeIdStateQuery;
    iget v3, p0, Landroid/app/compat/ChangeIdStateQuery;->type:I

    iget v4, v2, Landroid/app/compat/ChangeIdStateQuery;->type:I

    if-ne v3, v4, :cond_34

    iget-wide v3, p0, Landroid/app/compat/ChangeIdStateQuery;->changeId:J

    iget-wide v5, v2, Landroid/app/compat/ChangeIdStateQuery;->changeId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_34

    iget-object v3, p0, Landroid/app/compat/ChangeIdStateQuery;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/compat/ChangeIdStateQuery;->packageName:Ljava/lang/String;

    .line 82
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget v3, p0, Landroid/app/compat/ChangeIdStateQuery;->uid:I

    iget v4, v2, Landroid/app/compat/ChangeIdStateQuery;->uid:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/app/compat/ChangeIdStateQuery;->userId:I

    iget v4, v2, Landroid/app/compat/ChangeIdStateQuery;->userId:I

    if-ne v3, v4, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    .line 80
    :goto_35
    return v0

    .line 77
    .end local v2    # "that":Landroid/app/compat/ChangeIdStateQuery;
    :cond_36
    :goto_36
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 89
    const/4 v0, 0x1

    .line 90
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/compat/ChangeIdStateQuery;->type:I

    add-int/2addr v1, v2

    .line 91
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/compat/ChangeIdStateQuery;->changeId:J

    iget-wide v4, p0, Landroid/app/compat/ChangeIdStateQuery;->changeId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 92
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iget-object v1, p0, Landroid/app/compat/ChangeIdStateQuery;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 93
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/compat/ChangeIdStateQuery;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 95
    :cond_20
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/compat/ChangeIdStateQuery;->uid:I

    add-int/2addr v1, v2

    .line 96
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/compat/ChangeIdStateQuery;->userId:I

    add-int/2addr v0, v2

    .line 97
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
