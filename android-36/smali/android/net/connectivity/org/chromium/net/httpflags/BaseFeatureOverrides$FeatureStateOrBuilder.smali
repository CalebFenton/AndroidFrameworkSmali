.class public interface abstract Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureStateOrBuilder;
.super Ljava/lang/Object;
.source "BaseFeatureOverrides.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeatureStateOrBuilder"
.end annotation


# virtual methods
.method public abstract blacklist containsParams(Ljava/lang/String;)Z
.end method

.method public abstract blacklist getEnabled()Z
.end method

.method public abstract blacklist getParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract blacklist getParamsCount()I
.end method

.method public abstract blacklist getParamsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getParamsOrDefault(Ljava/lang/String;Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;
.end method

.method public abstract blacklist getParamsOrThrow(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ByteString;
.end method

.method public abstract blacklist hasEnabled()Z
.end method
