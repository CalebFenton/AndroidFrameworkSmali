.class public final Landroid/content/pm/CapabilityParams$Builder;
.super Ljava/lang/Object;
.source "CapabilityParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/CapabilityParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAliases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKey:Ljava/lang/String;

.field private final blacklist mPrimaryValue:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAliases(Landroid/content/pm/CapabilityParams$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/CapabilityParams$Builder;->mAliases:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKey(Landroid/content/pm/CapabilityParams$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/CapabilityParams$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimaryValue(Landroid/content/pm/CapabilityParams$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/CapabilityParams$Builder;->mPrimaryValue:Ljava/lang/String;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 190
    iput-object p2, p0, Landroid/content/pm/CapabilityParams$Builder;->mPrimaryValue:Ljava/lang/String;

    .line 191
    iput-object p1, p0, Landroid/content/pm/CapabilityParams$Builder;->mKey:Ljava/lang/String;

    .line 192
    return-void

    .line 188
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primary value cannot be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addAlias(Ljava/lang/String;)Landroid/content/pm/CapabilityParams$Builder;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Landroid/content/pm/CapabilityParams$Builder;->mAliases:Ljava/util/Set;

    if-nez v0, :cond_c

    .line 200
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/CapabilityParams$Builder;->mAliases:Ljava/util/Set;

    .line 202
    :cond_c
    iget-object v0, p0, Landroid/content/pm/CapabilityParams$Builder;->mAliases:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    return-object p0
.end method

.method public whitelist build()Landroid/content/pm/CapabilityParams;
    .registers 3

    .line 212
    new-instance v0, Landroid/content/pm/CapabilityParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/pm/CapabilityParams;-><init>(Landroid/content/pm/CapabilityParams$Builder;Landroid/content/pm/CapabilityParams-IA;)V

    return-object v0
.end method
