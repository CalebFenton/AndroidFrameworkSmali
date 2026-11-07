.class public final Landroid/adservices/measurement/DeletionRequest$Builder;
.super Ljava/lang/Object;
.source "DeletionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/measurement/DeletionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDeletionMode:I

.field private blacklist mDomainUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEnd:Ljava/time/Instant;

.field private blacklist mMatchBehavior:I

.field private blacklist mOriginUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStart:Ljava/time/Instant;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeletionMode(Landroid/adservices/measurement/DeletionRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mDeletionMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDomainUris(Landroid/adservices/measurement/DeletionRequest$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mDomainUris:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnd(Landroid/adservices/measurement/DeletionRequest$Builder;)Ljava/time/Instant;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mEnd:Ljava/time/Instant;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMatchBehavior(Landroid/adservices/measurement/DeletionRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mMatchBehavior:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginUris(Landroid/adservices/measurement/DeletionRequest$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mOriginUris:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/adservices/measurement/DeletionRequest$Builder;)Ljava/time/Instant;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mStart:Ljava/time/Instant;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    sget-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    iput-object v0, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mStart:Ljava/time/Instant;

    .line 123
    sget-object v0, Ljava/time/Instant;->MAX:Ljava/time/Instant;

    iput-object v0, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mEnd:Ljava/time/Instant;

    .line 129
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/measurement/DeletionRequest;
    .registers 3

    .line 201
    iget-object v0, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mDomainUris:Ljava/util/List;

    if-nez v0, :cond_b

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mDomainUris:Ljava/util/List;

    .line 204
    :cond_b
    iget-object v0, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mOriginUris:Ljava/util/List;

    if-nez v0, :cond_16

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mOriginUris:Ljava/util/List;

    .line 207
    :cond_16
    new-instance v0, Landroid/adservices/measurement/DeletionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/measurement/DeletionRequest;-><init>(Landroid/adservices/measurement/DeletionRequest$Builder;Landroid/adservices/measurement/DeletionRequest-IA;)V

    return-object v0
.end method

.method public whitelist setDeletionMode(I)Landroid/adservices/measurement/DeletionRequest$Builder;
    .registers 2
    .param p1, "deletionMode"    # I

    .line 173
    iput p1, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mDeletionMode:I

    .line 174
    return-object p0
.end method

.method public whitelist setDomainUris(Ljava/util/List;)Landroid/adservices/measurement/DeletionRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/adservices/measurement/DeletionRequest$Builder;"
        }
    .end annotation

    .line 150
    .local p1, "domainUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iput-object p1, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mDomainUris:Ljava/util/List;

    .line 151
    return-object p0
.end method

.method public whitelist setEnd(Ljava/time/Instant;)Landroid/adservices/measurement/DeletionRequest$Builder;
    .registers 2
    .param p1, "end"    # Ljava/time/Instant;

    .line 194
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iput-object p1, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mEnd:Ljava/time/Instant;

    .line 196
    return-object p0
.end method

.method public whitelist setMatchBehavior(I)Landroid/adservices/measurement/DeletionRequest$Builder;
    .registers 2
    .param p1, "matchBehavior"    # I

    .line 162
    iput p1, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mMatchBehavior:I

    .line 163
    return-object p0
.end method

.method public whitelist setOriginUris(Ljava/util/List;)Landroid/adservices/measurement/DeletionRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/adservices/measurement/DeletionRequest$Builder;"
        }
    .end annotation

    .line 139
    .local p1, "originUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iput-object p1, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mOriginUris:Ljava/util/List;

    .line 140
    return-object p0
.end method

.method public whitelist setStart(Ljava/time/Instant;)Landroid/adservices/measurement/DeletionRequest$Builder;
    .registers 2
    .param p1, "start"    # Ljava/time/Instant;

    .line 183
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iput-object p1, p0, Landroid/adservices/measurement/DeletionRequest$Builder;->mStart:Ljava/time/Instant;

    .line 185
    return-object p0
.end method
