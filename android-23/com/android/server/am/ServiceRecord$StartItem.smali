.class Lcom/android/server/am/ServiceRecord$StartItem;
.super Ljava/lang/Object;
.source "ServiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ServiceRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartItem"
.end annotation


# instance fields
.field deliveredTime:J

.field deliveryCount:I

.field doneExecutingCount:I

.field final id:I

.field final intent:Landroid/content/Intent;

.field final neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

.field final sr:Lcom/android/server/am/ServiceRecord;

.field stringName:Ljava/lang/String;

.field final taskRemoved:Z

.field uriPermissions:Lcom/android/server/am/UriPermissionOwner;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;)V
    .locals 0
    .param p1, "_sr"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "_taskRemoved"    # Z
    .param p3, "_id"    # I
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_neededGrants"    # Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 135
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    #@5
    .line 136
    iput-boolean p2, p0, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    #@7
    .line 137
    iput p3, p0, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    #@9
    .line 138
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    #@b
    .line 139
    iput-object p5, p0, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    #@d
    .line 134
    return-void
.end method


# virtual methods
.method getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;
    .locals 2

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 144
    new-instance v0, Lcom/android/server/am/UriPermissionOwner;

    #@6
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    #@8
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    #@a
    invoke-direct {v0, v1, p0}, Lcom/android/server/am/UriPermissionOwner;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V

    #@d
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@f
    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@11
    return-object v0
.end method

.method removeUriPermissionsLocked()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 150
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 151
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@7
    invoke-virtual {v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked()V

    #@a
    .line 152
    iput-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    #@c
    .line 149
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->stringName:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 158
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->stringName:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 160
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const/16 v1, 0x80

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 161
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ServiceRecord{"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 162
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    #@17
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1a
    move-result v2

    #@1b
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 163
    const/16 v2, 0x20

    #@25
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 163
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    #@2b
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    #@2d
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 164
    const-string/jumbo v2, " StartItem "

    #@34
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    .line 165
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@3b
    move-result v2

    #@3c
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 166
    const-string/jumbo v2, " id="

    #@47
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    .line 166
    iget v2, p0, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    #@4d
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    .line 166
    const/16 v2, 0x7d

    #@53
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@56
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    iput-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->stringName:Ljava/lang/String;

    #@5c
    return-object v1
.end method
