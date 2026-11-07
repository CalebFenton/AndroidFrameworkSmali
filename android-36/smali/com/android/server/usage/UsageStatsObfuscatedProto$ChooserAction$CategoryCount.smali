.class public final Lcom/android/server/usage/UsageStatsObfuscatedProto$ChooserAction$CategoryCount;
.super Ljava/lang/Object;
.source "UsageStatsObfuscatedProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsObfuscatedProto$ChooserAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CategoryCount"
.end annotation


# static fields
.field public static final blacklist CATEGORY_TOKEN:J = 0x10500000001L

.field public static final blacklist COUNT:J = 0x10500000002L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/usage/UsageStatsObfuscatedProto$ChooserAction;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/usage/UsageStatsObfuscatedProto$ChooserAction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
