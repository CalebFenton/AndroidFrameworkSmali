.class public Landroid/adservices/measurement/DeletionRequest;
.super Ljava/lang/Object;
.source "DeletionRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/measurement/DeletionRequest$Builder;,
        Landroid/adservices/measurement/DeletionRequest$MatchBehavior;,
        Landroid/adservices/measurement/DeletionRequest$DeletionMode;
    }
.end annotation


# static fields
.field public static final whitelist DELETION_MODE_ALL:I = 0x0

.field public static final whitelist DELETION_MODE_EXCLUDE_INTERNAL_DATA:I = 0x1

.field public static final whitelist MATCH_BEHAVIOR_DELETE:I = 0x0

.field public static final whitelist MATCH_BEHAVIOR_PRESERVE:I = 0x1


# instance fields
.field private final blacklist mDeletionMode:I

.field private final blacklist mDomainUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEnd:Ljava/time/Instant;

.field private final blacklist mMatchBehavior:I

.field private final blacklist mOriginUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStart:Ljava/time/Instant;


# direct methods
.method private constructor blacklist <init>(Landroid/adservices/measurement/DeletionRequest$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/measurement/DeletionRequest$Builder;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Landroid/adservices/measurement/DeletionRequest$Builder;->-$$Nest$fgetmOriginUris(Landroid/adservices/measurement/DeletionRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/DeletionRequest;->mOriginUris:Ljava/util/List;

    .line 79
    invoke-static {p1}, Landroid/adservices/measurement/DeletionRequest$Builder;->-$$Nest$fgetmDomainUris(Landroid/adservices/measurement/DeletionRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/DeletionRequest;->mDomainUris:Ljava/util/List;

    .line 80
    invoke-static {p1}, Landroid/adservices/measurement/DeletionRequest$Builder;->-$$Nest$fgetmMatchBehavior(Landroid/adservices/measurement/DeletionRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/measurement/DeletionRequest;->mMatchBehavior:I

    .line 81
    invoke-static {p1}, Landroid/adservices/measurement/DeletionRequest$Builder;->-$$Nest$fgetmDeletionMode(Landroid/adservices/measurement/DeletionRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/measurement/DeletionRequest;->mDeletionMode:I

    .line 82
    invoke-static {p1}, Landroid/adservices/measurement/DeletionRequest$Builder;->-$$Nest$fgetmStart(Landroid/adservices/measurement/DeletionRequest$Builder;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/DeletionRequest;->mStart:Ljava/time/Instant;

    .line 83
    invoke-static {p1}, Landroid/adservices/measurement/DeletionRequest$Builder;->-$$Nest$fgetmEnd(Landroid/adservices/measurement/DeletionRequest$Builder;)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/measurement/DeletionRequest;->mEnd:Ljava/time/Instant;

    .line 84
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/measurement/DeletionRequest$Builder;Landroid/adservices/measurement/DeletionRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/measurement/DeletionRequest;-><init>(Landroid/adservices/measurement/DeletionRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist getDeletionMode()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/adservices/measurement/DeletionRequest;->mDeletionMode:I

    return v0
.end method

.method public whitelist getDomainUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/adservices/measurement/DeletionRequest;->mDomainUris:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getEnd()Ljava/time/Instant;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/adservices/measurement/DeletionRequest;->mEnd:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getMatchBehavior()I
    .registers 2

    .line 105
    iget v0, p0, Landroid/adservices/measurement/DeletionRequest;->mMatchBehavior:I

    return v0
.end method

.method public whitelist getOriginUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/adservices/measurement/DeletionRequest;->mOriginUris:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getStart()Ljava/time/Instant;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/adservices/measurement/DeletionRequest;->mStart:Ljava/time/Instant;

    return-object v0
.end method
