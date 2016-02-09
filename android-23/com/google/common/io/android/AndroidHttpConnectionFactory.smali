.class public Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;
.super Landroid_maps_conflict_avoidance/com/google/common/io/BaseHttpConnectionFactory;
.source "AndroidHttpConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$1;,
        Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;
    }
.end annotation


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static numOpenConnection:I


# instance fields
.field private client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

.field private final context:Landroid/content/Context;

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 38
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->lock:Ljava/lang/Object;

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/BaseHttpConnectionFactory;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->context:Landroid/content/Context;

    #@5
    const-string/jumbo v0, "GoogleMobile/1.0"

    #@8
    .line 47
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->userAgent:Ljava/lang/String;

    #@a
    .line 48
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 31
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->lock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    #@0
    .prologue
    .line 31
    sget v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I

    #@2
    return v0
.end method

.method static synthetic access$208()I
    .locals 2

    #@0
    .prologue
    .line 31
    sget v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I

    #@6
    return v0
.end method

.method static synthetic access$210()I
    .locals 2

    #@0
    .prologue
    .line 31
    sget v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I

    #@2
    add-int/lit8 v1, v0, -0x1

    #@4
    sput v1, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->numOpenConnection:I

    #@6
    return v0
.end method

.method static synthetic access$300(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;)Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    #@0
    .prologue
    .line 31
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    #@2
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 82
    :goto_0
    return-void

    #@5
    .line 80
    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    #@7
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->close()V

    #@a
    goto :goto_0
.end method

.method public createConnection(Ljava/lang/String;Z)Landroid_maps_conflict_avoidance/com/google/common/io/GoogleHttpConnection;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "usePost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 53
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 64
    :goto_0
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;

    #@7
    invoke-direct {v0, p0, p1, p2, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;Ljava/lang/String;ZLandroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory$1;)V

    #@a
    return-object v0

    #@b
    .line 57
    :cond_0
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    #@d
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->context:Landroid/content/Context;

    #@f
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->userAgent:Ljava/lang/String;

    #@15
    const/4 v3, 0x1

    #@16
    invoke-direct {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    #@19
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    #@1b
    .line 61
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    #@1d
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    #@20
    move-result-object v0

    #@21
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    #@23
    const/4 v2, 0x4

    #@24
    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    #@27
    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    #@2a
    goto :goto_0
.end method

.method public getClient()Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->client:Landroid_maps_conflict_avoidance/com/google/common/io/android/GoogleHttpClient;

    #@2
    return-object v0
.end method
