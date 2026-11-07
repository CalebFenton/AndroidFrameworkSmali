.class public interface abstract Lcom/android/internal/pm/pkg/component/ParsedAttribution;
.super Ljava/lang/Object;
.source "ParsedAttribution.java"


# static fields
.field public static final blacklist MAX_ATTRIBUTION_TAG_LEN:I = 0x32


# virtual methods
.method public abstract blacklist getInheritFrom()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getLabel()I
.end method

.method public abstract blacklist getTag()Ljava/lang/String;
.end method
