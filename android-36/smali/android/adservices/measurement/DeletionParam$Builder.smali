.class public final Landroid/adservices/measurement/DeletionParam$Builder;
.super Ljava/lang/Object;
.source "DeletionParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/measurement/DeletionParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mDeletionMode:I

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

.field private blacklist mMatchBehavior:I

.field private final blacklist mOriginUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSdkPackageName:Ljava/lang/String;

.field private final blacklist mStart:Ljava/time/Instant;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppPackageName(Landroid/adservices/measurement/DeletionParam$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/DeletionParam$Builder;->mAppPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeletionMode(Landroid/adservices/measurement/DeletionParam$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/measurement/DeletionParam$Builder;->mDeletionMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDomainUris(Landroid/adservices/measurement/DeletionParam$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/DeletionParam$Builder;->mDomainUris:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnd(Landroid/adservices/measurement/DeletionParam$Builder;)Ljava/time/Instant;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/DeletionParam$Builder;->mEnd:Ljava/time/Instant;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMatchBehavior(Landroid/adservices/measurement/DeletionParam$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/measurement/DeletionParam$Builder;->mMatchBehavior:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginUris(Landroid/adservices/measurement/DeletionParam$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/DeletionParam$Builder;->mOriginUris:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSdkPackageName(Landroid/adservices/measurement/DeletionParam$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/DeletionParam$Builder;->mSdkPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/adservices/measurement/DeletionParam$Builder;)Ljava/time/Instant;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/DeletionParam$Builder;->mStart:Ljava/time/Instant;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;Ljava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p3, "start"    # Ljava/time/Instant;
    .param p4, "end"    # Ljava/time/Instant;
    .param p5, "appPackageName"    # Ljava/lang/String;
    .param p6, "sdkPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/time/Instant;",
            "Ljava/time/Instant;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 219
    .local p1, "originUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .local p2, "domainUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iput-object p1, p0, Landroid/adservices/measurement/DeletionParam$Builder;->mOriginUris:Ljava/util/List;

    .line 228
    iput-object p2, p0, Landroid/adservices/measurement/DeletionParam$Builder;->mDomainUris:Ljava/util/List;

    .line 229
    iput-object p3, p0, Landroid/adservices/measurement/DeletionParam$Builder;->mStart:Ljava/time/Instant;

    .line 230
    iput-object p4, p0, Landroid/adservices/measurement/DeletionParam$Builder;->mEnd:Ljava/time/Instant;

    .line 231
    iput-object p5, p0, Landroid/adservices/measurement/DeletionParam$Builder;->mAppPackageName:Ljava/lang/String;

    .line 232
    iput-object p6, p0, Landroid/adservices/measurement/DeletionParam$Builder;->mSdkPackageName:Ljava/lang/String;

    .line 233
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/measurement/DeletionParam;
    .registers 3

    .line 252
    new-instance v0, Landroid/adservices/measurement/DeletionParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/measurement/DeletionParam;-><init>(Landroid/adservices/measurement/DeletionParam$Builder;Landroid/adservices/measurement/DeletionParam-IA;)V

    return-object v0
.end method

.method public blacklist setDeletionMode(I)Landroid/adservices/measurement/DeletionParam$Builder;
    .registers 2
    .param p1, "deletionMode"    # I

    .line 238
    iput p1, p0, Landroid/adservices/measurement/DeletionParam$Builder;->mDeletionMode:I

    .line 239
    return-object p0
.end method

.method public blacklist setMatchBehavior(I)Landroid/adservices/measurement/DeletionParam$Builder;
    .registers 2
    .param p1, "matchBehavior"    # I

    .line 245
    iput p1, p0, Landroid/adservices/measurement/DeletionParam$Builder;->mMatchBehavior:I

    .line 246
    return-object p0
.end method
