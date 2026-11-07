.class public final Lcom/android/server/IntentResolverProto$ArrayMapEntry;
.super Ljava/lang/Object;
.source "IntentResolverProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IntentResolverProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ArrayMapEntry"
.end annotation


# static fields
.field public static final blacklist KEY:J = 0x10900000001L

.field public static final blacklist VALUES:J = 0x20900000002L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/IntentResolverProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/IntentResolverProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
