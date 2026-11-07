.class Ljava/lang/ClassValue$Identity;
.super Ljava/lang/Object;
.source "ClassValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ClassValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Identity"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
