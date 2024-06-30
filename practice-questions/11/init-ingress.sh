helm upgrade --install ingress-nginx ingress-nginx --repo https://kubernetes.github.io/ingress-nginx --namespace ingress-nginx --create-namespace

NODE_IP=$(kubectl get nodes controlplane -o jsonpath='{.status.addresses[?(@.type=="InternalIP")].address}')
echo $NODE_IP path-ingress.info >> /etc/hosts
