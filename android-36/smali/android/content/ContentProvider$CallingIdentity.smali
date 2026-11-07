.class public final Landroid/content/ContentProvider$CallingIdentity;
.super Ljava/lang/Object;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CallingIdentity"
.end annotation


# instance fields
.field public final blacklist binderToken:J

.field public final blacklist callingAttributionSource:Landroid/content/AttributionSource;


# direct methods
.method public constructor blacklist <init>(Landroid/content/ContentProvider;JLandroid/content/AttributionSource;)V
    .registers 5
    .param p1, "this$0"    # Landroid/content/ContentProvider;
    .param p2, "binderToken"    # J
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1263
    iput-wide p2, p0, Landroid/content/ContentProvider$CallingIdentity;->binderToken:J

    .line 1264
    iput-object p4, p0, Landroid/content/ContentProvider$CallingIdentity;->callingAttributionSource:Landroid/content/AttributionSource;

    .line 1265
    return-void
.end method
