.class Landroid/security/identity/PersonalizationData$EntryData;
.super Ljava/lang/Object;
.source "PersonalizationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/PersonalizationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryData"
.end annotation


# instance fields
.field blacklist mAccessControlProfileIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/security/identity/AccessControlProfileId;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mValue:[B


# direct methods
.method constructor blacklist <init>([BLjava/util/Collection;)V
    .registers 3
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Landroid/security/identity/AccessControlProfileId;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p2, "accessControlProfileIds":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/security/identity/AccessControlProfileId;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/security/identity/PersonalizationData$EntryData;->mValue:[B

    .line 98
    iput-object p2, p0, Landroid/security/identity/PersonalizationData$EntryData;->mAccessControlProfileIds:Ljava/util/Collection;

    .line 99
    return-void
.end method
