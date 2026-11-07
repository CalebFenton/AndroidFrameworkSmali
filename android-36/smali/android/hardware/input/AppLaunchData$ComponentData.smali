.class public Landroid/hardware/input/AppLaunchData$ComponentData;
.super Ljava/lang/Object;
.source "AppLaunchData.java"

# interfaces
.implements Landroid/hardware/input/AppLaunchData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/AppLaunchData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentData"
.end annotation


# instance fields
.field private final blacklist mClassName:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Landroid/hardware/input/AppLaunchData$ComponentData;->mPackageName:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Landroid/hardware/input/AppLaunchData$ComponentData;->mClassName:Ljava/lang/String;

    .line 143
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 157
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 158
    :cond_4
    instance-of v1, p1, Landroid/hardware/input/AppLaunchData$ComponentData;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    move-object v1, p1

    check-cast v1, Landroid/hardware/input/AppLaunchData$ComponentData;

    .line 159
    .local v1, "that":Landroid/hardware/input/AppLaunchData$ComponentData;
    iget-object v3, p0, Landroid/hardware/input/AppLaunchData$ComponentData;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/input/AppLaunchData$ComponentData;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/hardware/input/AppLaunchData$ComponentData;->mClassName:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/input/AppLaunchData$ComponentData;->mClassName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0

    .line 158
    .end local v1    # "that":Landroid/hardware/input/AppLaunchData$ComponentData;
    :cond_23
    return v2
.end method

.method public blacklist getClassName()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/hardware/input/AppLaunchData$ComponentData;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/hardware/input/AppLaunchData$ComponentData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 165
    iget-object v0, p0, Landroid/hardware/input/AppLaunchData$ComponentData;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/input/AppLaunchData$ComponentData;->mClassName:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentData{mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/AppLaunchData$ComponentData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mClassName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/input/AppLaunchData$ComponentData;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
