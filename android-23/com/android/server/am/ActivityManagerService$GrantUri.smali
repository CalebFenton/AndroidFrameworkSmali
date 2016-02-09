.class public Lcom/android/server/am/ActivityManagerService$GrantUri;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GrantUri"
.end annotation


# instance fields
.field public prefix:Z

.field public final sourceUserId:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Z)V
    .locals 0
    .param p1, "sourceUserId"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "prefix"    # Z

    #@0
    .prologue
    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 873
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    #@5
    .line 874
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    #@7
    .line 875
    iput-boolean p3, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    #@9
    .line 872
    return-void
.end method

.method public static resolve(ILandroid/net/Uri;)Lcom/android/server/am/ActivityManagerService$GrantUri;
    .locals 4
    .param p0, "defaultSourceUserHandle"    # I
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 911
    new-instance v0, Lcom/android/server/am/ActivityManagerService$GrantUri;

    #@2
    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    #@5
    move-result v1

    #@6
    .line 912
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    .line 911
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$GrantUri;-><init>(ILandroid/net/Uri;Z)V

    #@e
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 889
    instance-of v2, p1, Lcom/android/server/am/ActivityManagerService$GrantUri;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 890
    check-cast v0, Lcom/android/server/am/ActivityManagerService$GrantUri;

    #@8
    .line 891
    .local v0, "other":Lcom/android/server/am/ActivityManagerService$GrantUri;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    #@a
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    #@c
    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    #@14
    iget v3, v0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    #@16
    if-ne v2, v3, :cond_0

    #@18
    .line 892
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    #@1a
    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    #@1c
    if-ne v2, v3, :cond_0

    #@1e
    const/4 v1, 0x1

    #@1f
    .line 891
    :cond_0
    return v1

    #@20
    .line 894
    .end local v0    # "other":Lcom/android/server/am/ActivityManagerService$GrantUri;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 881
    iget v1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    #@2
    add-int/lit8 v0, v1, 0x1f

    #@4
    .line 882
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    #@6
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    #@8
    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    #@b
    move-result v2

    #@c
    add-int v0, v1, v2

    #@e
    .line 883
    mul-int/lit8 v2, v0, 0x1f

    #@10
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    #@12
    if-eqz v1, :cond_0

    #@14
    const/16 v1, 0x4cf

    #@16
    :goto_0
    add-int v0, v2, v1

    #@18
    .line 884
    return v0

    #@19
    .line 883
    :cond_0
    const/16 v1, 0x4d5

    #@1b
    goto :goto_0
.end method

.method public toSafeString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    #@7
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, " @ "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    #@18
    invoke-virtual {v2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 906
    .local v0, "result":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    #@26
    if-eqz v1, :cond_0

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, " [prefix]"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 907
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 899
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    #@7
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, " @ "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    #@18
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 900
    .local v0, "result":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    #@26
    if-eqz v1, :cond_0

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, " [prefix]"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 901
    :cond_0
    return-object v0
.end method
