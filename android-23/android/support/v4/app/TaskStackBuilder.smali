.class public Landroid/support/v4/app/TaskStackBuilder;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/TaskStackBuilder$SupportParentable;,
        Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;,
        Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplBase;,
        Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplHoneycomb;,
        Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplJellybean;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;

.field private static final TAG:Ljava/lang/String; = "TaskStackBuilder"


# instance fields
.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xb

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 116
    new-instance v0, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplHoneycomb;

    #@8
    invoke-direct {v0}, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplHoneycomb;-><init>()V

    #@b
    sput-object v0, Landroid/support/v4/app/TaskStackBuilder;->IMPL:Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;

    #@d
    .line 69
    :goto_0
    return-void

    #@e
    .line 118
    :cond_0
    new-instance v0, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplBase;

    #@10
    invoke-direct {v0}, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplBase;-><init>()V

    #@13
    sput-object v0, Landroid/support/v4/app/TaskStackBuilder;->IMPL:Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;

    #@15
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "a"    # Landroid/content/Context;

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@a
    .line 126
    iput-object p1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@c
    .line 125
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 137
    new-instance v0, Landroid/support/v4/app/TaskStackBuilder;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method public static from(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 150
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 1
    .param p1, "nextIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 162
    return-object p0
.end method

.method public addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 2
    .param p1, "nextIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    .line 179
    .local v0, "target":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    #@6
    .line 180
    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    #@f
    move-result-object v0

    #@10
    .line 182
    :cond_0
    if-eqz v0, :cond_1

    #@12
    .line 183
    invoke-virtual {p0, v0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;

    #@15
    .line 185
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    #@18
    .line 186
    return-object p0
.end method

.method public addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 3
    .param p1, "sourceActivity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 197
    const/4 v0, 0x0

    #@1
    .line 198
    .local v0, "parent":Landroid/content/Intent;
    instance-of v2, p1, Landroid/support/v4/app/TaskStackBuilder$SupportParentable;

    #@3
    if-eqz v2, :cond_0

    #@5
    move-object v2, p1

    #@6
    .line 199
    check-cast v2, Landroid/support/v4/app/TaskStackBuilder$SupportParentable;

    #@8
    invoke-interface {v2}, Landroid/support/v4/app/TaskStackBuilder$SupportParentable;->getSupportParentActivityIntent()Landroid/content/Intent;

    #@b
    move-result-object v0

    #@c
    .line 201
    .end local v0    # "parent":Landroid/content/Intent;
    :cond_0
    if-nez v0, :cond_1

    #@e
    .line 202
    invoke-static {p1}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    #@11
    move-result-object v0

    #@12
    .line 205
    :cond_1
    if-eqz v0, :cond_3

    #@14
    .line 208
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@17
    move-result-object v1

    #@18
    .line 209
    .local v1, "target":Landroid/content/ComponentName;
    if-nez v1, :cond_2

    #@1a
    .line 210
    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@1c
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    #@23
    move-result-object v1

    #@24
    .line 212
    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;

    #@27
    .line 213
    invoke-virtual {p0, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    #@2a
    .line 215
    .end local v1    # "target":Landroid/content/ComponentName;
    :cond_3
    return-object p0
.end method

.method public addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 5
    .param p1, "sourceActivityName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 238
    iget-object v3, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 240
    .local v1, "insertAt":I
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@8
    invoke-static {v3, p1}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    #@b
    move-result-object v2

    #@c
    .line 241
    .local v2, "parent":Landroid/content/Intent;
    :goto_0
    if-eqz v2, :cond_0

    #@e
    .line 242
    iget-object v3, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@13
    .line 243
    iget-object v3, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@15
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@18
    move-result-object v4

    #@19
    invoke-static {v3, v4}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-object v2

    #@1d
    goto :goto_0

    #@1e
    .line 245
    .end local v2    # "parent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    #@1f
    .line 246
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "TaskStackBuilder"

    #@22
    const-string/jumbo v4, "Bad ComponentName while traversing activity parent metadata"

    #@25
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 247
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@2a
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@2d
    throw v3

    #@2e
    .line 249
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "parent":Landroid/content/Intent;
    :cond_0
    return-object p0
.end method

.method public addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/support/v4/app/TaskStackBuilder;"
        }
    .end annotation

    #@0
    .prologue
    .line 226
    .local p1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@7
    invoke-virtual {p0, v0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public editIntentAt(I)Landroid/content/Intent;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/Intent;

    #@8
    return-object v0
.end method

.method public getIntent(I)Landroid/content/Intent;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 270
    invoke-virtual {p0, p1}, Landroid/support/v4/app/TaskStackBuilder;->editIntentAt(I)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getIntentCount()I
    .locals 1

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 382
    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    new-array v1, v2, [Landroid/content/Intent;

    #@9
    .line 383
    .local v1, "intents":[Landroid/content/Intent;
    array-length v2, v1

    #@a
    if-nez v2, :cond_0

    #@c
    return-object v1

    #@d
    .line 385
    :cond_0
    new-instance v3, Landroid/content/Intent;

    #@f
    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/content/Intent;

    #@17
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@1a
    const v2, 0x1000c000

    #@1d
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@20
    move-result-object v2

    #@21
    aput-object v2, v1, v4

    #@23
    .line 388
    const/4 v0, 0x1

    #@24
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@25
    if-ge v0, v2, :cond_1

    #@27
    .line 389
    new-instance v3, Landroid/content/Intent;

    #@29
    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/content/Intent;

    #@31
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@34
    aput-object v3, v1, v0

    #@36
    .line 388
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 391
    :cond_1
    return-object v1
.end method

.method public getPendingIntent(II)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 344
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 361
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 362
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    .line 363
    const-string/jumbo v1, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    #@e
    .line 362
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 366
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@14
    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v1

    #@1a
    new-array v1, v1, [Landroid/content/Intent;

    #@1c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, [Landroid/content/Intent;

    #@22
    .line 367
    .local v2, "intents":[Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    #@24
    aget-object v1, v2, v3

    #@26
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@29
    const v1, 0x1000c000

    #@2c
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@2f
    move-result-object v0

    #@30
    aput-object v0, v2, v3

    #@32
    .line 371
    sget-object v0, Landroid/support/v4/app/TaskStackBuilder;->IMPL:Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;

    #@34
    iget-object v1, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@36
    move v3, p1

    #@37
    move v4, p2

    #@38
    move-object v5, p3

    #@39
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;->getPendingIntent(Landroid/content/Context;[Landroid/content/Intent;IILandroid/os/Bundle;)Landroid/app/PendingIntent;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public startActivities()V
    .locals 1

    #@0
    .prologue
    .line 301
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V

    #@4
    .line 300
    return-void
.end method

.method public startActivities(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 316
    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 317
    new-instance v2, Ljava/lang/IllegalStateException;

    #@b
    .line 318
    const-string/jumbo v3, "No intents added to TaskStackBuilder; cannot startActivities"

    #@e
    .line 317
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 321
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@14
    iget-object v3, p0, Landroid/support/v4/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v3

    #@1a
    new-array v3, v3, [Landroid/content/Intent;

    #@1c
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, [Landroid/content/Intent;

    #@22
    .line 322
    .local v0, "intents":[Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    #@24
    aget-object v3, v0, v4

    #@26
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@29
    const v3, 0x1000c000

    #@2c
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@2f
    move-result-object v2

    #@30
    aput-object v2, v0, v4

    #@32
    .line 325
    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@34
    invoke-static {v2, v0, p1}, Landroid/support/v4/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    #@37
    move-result v2

    #@38
    if-nez v2, :cond_1

    #@3a
    .line 326
    new-instance v1, Landroid/content/Intent;

    #@3c
    array-length v2, v0

    #@3d
    add-int/lit8 v2, v2, -0x1

    #@3f
    aget-object v2, v0, v2

    #@41
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@44
    .line 327
    .local v1, "topIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    #@46
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@49
    .line 328
    iget-object v2, p0, Landroid/support/v4/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    #@4b
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@4e
    .line 315
    .end local v1    # "topIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
