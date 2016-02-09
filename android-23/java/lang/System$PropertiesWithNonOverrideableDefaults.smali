.class final Ljava/lang/System$PropertiesWithNonOverrideableDefaults;
.super Ljava/util/Properties;
.source "System.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PropertiesWithNonOverrideableDefaults"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Properties;)V
    .locals 0
    .param p1, "defaults"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 1215
    invoke-direct {p0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    #@3
    .line 1214
    return-void
.end method


# virtual methods
.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1220
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "Ignoring attempt to set property \""

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 1222
    const-string/jumbo v1, "\" to value \""

    #@1b
    .line 1221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 1222
    const-string/jumbo v1, "\"."

    #@26
    .line 1221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@31
    .line 1223
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    #@33
    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    return-object v0

    #@38
    .line 1226
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1231
    iget-object v0, p0, Ljava/lang/System$PropertiesWithNonOverrideableDefaults;->defaults:Ljava/util/Properties;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "Ignoring attempt to remove property \""

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, "\"."

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@26
    .line 1233
    const/4 v0, 0x0

    #@27
    return-object v0

    #@28
    .line 1236
    :cond_0
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method
