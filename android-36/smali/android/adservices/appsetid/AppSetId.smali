.class public Landroid/adservices/appsetid/AppSetId;
.super Ljava/lang/Object;
.source "AppSetId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/appsetid/AppSetId$AppSetIdScope;
    }
.end annotation


# static fields
.field public static final whitelist SCOPE_APP:I = 0x1

.field public static final whitelist SCOPE_DEVELOPER:I = 0x2


# instance fields
.field private final blacklist mAppSetId:Ljava/lang/String;

.field private final blacklist mAppSetIdScope:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "appSetId"    # Ljava/lang/String;
    .param p2, "appSetIdScope"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/adservices/appsetid/AppSetId;->mAppSetId:Ljava/lang/String;

    .line 64
    iput p2, p0, Landroid/adservices/appsetid/AppSetId;->mAppSetIdScope:I

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 79
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 80
    return v0

    .line 82
    :cond_4
    instance-of v1, p1, Landroid/adservices/appsetid/AppSetId;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 83
    return v2

    .line 85
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/appsetid/AppSetId;

    .line 86
    .local v1, "that":Landroid/adservices/appsetid/AppSetId;
    iget-object v3, p0, Landroid/adservices/appsetid/AppSetId;->mAppSetId:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/appsetid/AppSetId;->mAppSetId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget v3, p0, Landroid/adservices/appsetid/AppSetId;->mAppSetIdScope:I

    iget v4, v1, Landroid/adservices/appsetid/AppSetId;->mAppSetIdScope:I

    if-ne v3, v4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    return v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/adservices/appsetid/AppSetId;->mAppSetId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getScope()I
    .registers 2

    .line 74
    iget v0, p0, Landroid/adservices/appsetid/AppSetId;->mAppSetIdScope:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 91
    iget-object v0, p0, Landroid/adservices/appsetid/AppSetId;->mAppSetId:Ljava/lang/String;

    iget v1, p0, Landroid/adservices/appsetid/AppSetId;->mAppSetIdScope:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
